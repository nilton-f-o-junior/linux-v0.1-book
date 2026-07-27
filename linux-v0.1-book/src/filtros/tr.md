# tr

Traduz ou remove caracteres da entrada padrão.

```bash
tr [opções] conjunto1 [conjunto2]
```

| Argumento / Opção | Descrição |
|---|---|
| conjunto1 | Conjunto de caracteres a serem substituídos ou removidos |
| conjunto2 | Conjunto de caracteres que substituirá `conjunto1` |
| -d, --delete | Remove os caracteres de `conjunto1`, em vez de substituí-los |
| -s, --squeeze-repeats | Reduz sequências repetidas de um mesmo caractere a uma única ocorrência |
| -c, --complement | Usa o complemento de `conjunto1` (todos os caracteres que não estão nele) |

> `tr` trabalha apenas com a entrada padrão (`stdin`), não recebe arquivo diretamente como argumento — por isso, costuma ser usado em conjunto com pipes (`|`).

**Exemplos**

```bash
echo "Ola Mundo" | tr 'a-z' 'A-Z'      # converte todo o texto para maiúsculas
echo "Ola Mundo" | tr ' ' '_'          # substitui espaços por underscores
cat arquivo.txt | tr -d '0-9'          # remove todos os números do texto
cat arquivo.txt | tr -s ' '            # reduz múltiplos espaços consecutivos a um único espaço
echo "12345" | tr -c '0-9' '#'         # substitui tudo que não for número por `#`
```
