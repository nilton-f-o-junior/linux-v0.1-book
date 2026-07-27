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
wc arquivo.txt                        # exibe linhas, palavras e bytes de `arquivo.txt`
wc -l arquivo.txt                     # exibe apenas o número de linhas
wc -w arquivo.txt                     # exibe apenas o número de palavras
wc -c arquivo.txt                     # exibe apenas o número de bytes
cat arquivo.txt | wc -l               # conta o número de linhas da saída do comando `cat`
ls -la | wc -l                        # conta a quantidade de itens listados em um diretório
```
