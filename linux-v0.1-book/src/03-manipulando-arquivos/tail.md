# tail

Exibe as últimas linhas de um arquivo (10 por padrão).

```bash
tail [opções] [diretório/arquivo] [diretório1/arquivo1]
```

| Argumento / Opção | Descrição |
|---|---|
| `diretório/arquivo` | Localização do arquivo a ser visualizado |
| `-n`, `--lines=N` | Exibe as últimas `N` linhas (padrão: 10) |
| `-c`, `--bytes=N` | Exibe os últimos `N` bytes do arquivo |
| `-f`, `--follow` | Mantém o arquivo aberto e exibe novas linhas em tempo real |

**Exemplos**

```bash
tail arquivo.txt                    # exibe as 10 últimas linhas de `arquivo.txt`
tail -n 20 arquivo.txt              # exibe as 20 últimas linhas
tail -c 100 arquivo.txt             # exibe os 100 últimos bytes
tail -f /var/log/syslog             # monitora o arquivo em tempo real (útil para logs)
tail -n +5 arquivo.txt              # exibe o arquivo a partir da 5ª linha até o fim
```
