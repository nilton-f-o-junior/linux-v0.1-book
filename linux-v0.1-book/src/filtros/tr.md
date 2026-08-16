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
# converte todo o texto para maiúsculas
echo "Ola Mundo" | tr 'a-z' 'A-Z'
```

```bash
# substitui espaços por underscores
echo "Ola Mundo" | tr ' ' '_'
```

```bash
# remove todos os números do texto
cat arquivo.txt | tr -d '0-9'
```

```bash
# reduz múltiplos espaços consecutivos a um único espaço
cat arquivo.txt | tr -s ' '
```

```bash
# substitui tudo que não for número por `#`
echo "12345" | tr -c '0-9' '#'
```
