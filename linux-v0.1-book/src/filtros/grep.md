# grep

Busca por padrões de texto dentro de arquivos.

```bash
grep [opções] padrão [arquivo]
```

| Argumento / Opção | Descrição |
|---|---|
| padrão | Texto ou expressão regular a ser procurado |
| arquivo | Localização do arquivo onde a busca será realizada |
| -i, --ignore-case | Ignora diferenças entre maiúsculas e minúsculas |
| -v, --invert-match | Exibe as linhas que **não** correspondem ao padrão |
| -n, --line-number | Exibe o número da linha correspondente |
| -r, --recursive | Busca recursivamente em todos os arquivos de um diretório |
| -c, --count | Exibe apenas a quantidade de linhas correspondentes |
| -E, --extended-regexp | Interpreta o padrão como uma expressão regular estendida (ERE) |

> `grep` é amplamente usado em conjunto com pipes (`|`) para filtrar a saída de outros comandos.

**Exemplos**

```bash
grep "erro" log.txt                   # exibe as linhas de `log.txt` que contêm a palavra `erro`
grep -i "erro" log.txt                # busca ignorando diferenças entre maiúsculas e minúsculas
grep -n "erro" log.txt                # exibe as linhas correspondentes com o número da linha
grep -v "erro" log.txt                # exibe as linhas que não contêm a palavra `erro`
grep -r "TODO" ./projeto              # busca recursivamente pela palavra `TODO` dentro de um diretório
ps aux | grep "firefox"                # filtra a lista de processos, exibindo apenas os relacionados a `firefox`
```
