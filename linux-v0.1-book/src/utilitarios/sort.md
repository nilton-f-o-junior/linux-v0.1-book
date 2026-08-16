# sort

Ordena as linhas de um arquivo de texto.

```bash
sort [opções] [arquivo]
```

| Argumento / Opção | Descrição |
|---|---|
| arquivo | Localização do arquivo a ser ordenado |
| -r, --reverse | Ordena em ordem decrescente |
| -n, --numeric-sort | Ordena os valores numericamente, em vez de alfabeticamente |
| -u, --unique | Remove linhas duplicadas, exibindo apenas ocorrências únicas |
| -k campo | Ordena com base em um campo (coluna) específico |
| -f, --ignore-case | Ignora diferenças entre maiúsculas e minúsculas ao ordenar |

> Por padrão, `sort` ordena as linhas em ordem alfabética crescente, sem alterar o arquivo original — a saída é exibida na tela.

**Exemplos**

```bash
# exibe o conteúdo ordenado alfabeticamente
sort arquivo.txt
```

```bash
# exibe o conteúdo ordenado em ordem decrescente
sort -r arquivo.txt
```

```bash
# ordena os valores numericamente
sort -n numeros.txt
```

```bash
# exibe o conteúdo ordenado, removendo linhas duplicadas
sort -u arquivo.txt
```

```bash
# ordena com base no segundo campo de cada linha
sort -k 2 dados.txt
```

```bash
# ordena a saída do comando `cat` via pipe
cat arquivo.txt | sort
```
