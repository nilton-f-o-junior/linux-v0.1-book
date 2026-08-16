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
# exibe as linhas de `log.txt` que contêm a palavra `erro`
grep "erro" log.txt
```

```bash
# busca ignorando diferenças entre maiúsculas e minúsculas
grep -i "erro" log.txt
```

```bash
# exibe as linhas correspondentes com o número da linha
grep -n "erro" log.txt
```

```bash
# exibe as linhas que não contêm a palavra `erro`
grep -v "erro" log.txt
```

```bash
# busca recursivamente pela palavra `TODO` dentro de um diretório
grep -r "TODO" ./projeto
```

```bash
# filtra a lista de processos, exibindo apenas os relacionados a `firefox`
ps aux | grep "firefox"
```
