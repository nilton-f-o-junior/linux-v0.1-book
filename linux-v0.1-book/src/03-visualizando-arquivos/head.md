# head.md

Exibe as primeiras linhas de um arquivo (10 por padrão).

```bash
head [opções] [diretório/arquivo] [diretório1/arquivo1]
```

| Argumento / Opção | Descrição |
|---|---|
| `diretório/arquivo` | Localização do arquivo a ser visualizado |
| `-n`, `--lines=N` | Exibe as primeiras `N` linhas (padrão: 10) |
| `-c`, `--bytes=N` | Exibe os primeiros `N` bytes do arquivo |

**Exemplos**

```bash
head arquivo.txt                    # exibe as 10 primeiras linhas de `arquivo.txt`
head -n 20 arquivo.txt              # exibe as 20 primeiras linhas
head -c 100 arquivo.txt             # exibe os 100 primeiros bytes
head arquivo1.txt arquivo2.txt      # exibe as primeiras linhas de dois arquivos
ps aux | head -n 5                  # exibe os 5 primeiros processos listados
```
