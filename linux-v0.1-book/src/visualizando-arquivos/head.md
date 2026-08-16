# head

Exibe as primeiras linhas de um arquivo (10 por padrão).

```bash
head [opções] [arquivo] [arquivo1]
```

| Argumento / Opção | Descrição |
|---|---|
| arquivo | Localização do arquivo a ser visualizado |
| -n, --lines=N | Exibe as primeiras `N` linhas (padrão: 10) |
| -c, --bytes=N | Exibe os primeiros `N` bytes do arquivo |

**Exemplos**

```bash
# exibe as 10 primeiras linhas de `arquivo.txt`
head arquivo.txt
```

```bash
# exibe as 20 primeiras linhas
head -n 20 arquivo.txt
```

```bash
# exibe os 100 primeiros bytes
head -c 100 arquivo.txt
```

```bash
# exibe as primeiras linhas de dois arquivos
head arquivo1.txt arquivo2.txt
```
