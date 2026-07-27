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
sort arquivo.txt                      # exibe o conteúdo ordenado alfabeticamente
sort -r arquivo.txt                   # exibe o conteúdo ordenado em ordem decrescente
sort -n numeros.txt                   # ordena os valores numericamente
sort -u arquivo.txt                   # exibe o conteúdo ordenado, removendo linhas duplicadas
sort -k 2 dados.txt                   # ordena com base no segundo campo de cada linha
cat arquivo.txt | sort                # ordena a saída do comando `cat` via pipe
```
