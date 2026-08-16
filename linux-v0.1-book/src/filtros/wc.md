# wc

Conta linhas, palavras e caracteres de um arquivo de texto.

```bash
wc [opções] [arquivo]
```

| Argumento / Opção | Descrição |
|---|---|
| arquivo | Localização do arquivo a ser analisado |
| -l, --lines | Exibe apenas o número de linhas |
| -w, --words | Exibe apenas o número de palavras |
| -c, --bytes | Exibe apenas o número de bytes |
| -m, --chars | Exibe apenas o número de caracteres |

> Sem opções, `wc` exibe três valores, nessa ordem: número de linhas, número de palavras e número de bytes do arquivo.

**Exemplos**

```bash
# exibe linhas, palavras e bytes de `arquivo.txt`
wc arquivo.txt
```

```bash
# exibe apenas o número de linhas
wc -l arquivo.txt
```

```bash
# exibe apenas o número de palavras
wc -w arquivo.txt
```

```bash
# exibe apenas o número de bytes
wc -c arquivo.txt
```

```bash
# conta o número de linhas da saída do comando `cat`
cat arquivo.txt | wc -l
```

```bash
# conta a quantidade de itens listados em um diretório
ls -la | wc -l
```
