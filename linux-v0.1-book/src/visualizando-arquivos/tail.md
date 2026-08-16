# tail

Exibe as últimas linhas de um arquivo (10 por padrão).

```bash
tail [opções] [arquivo] [arquivo1]
```

| Argumento / Opção | Descrição |
|---|---|
| arquivo | Localização do arquivo a ser visualizado |
| -n, --lines=N | Exibe as últimas `N` linhas (padrão: 10) |
| -c, --bytes=N | Exibe os últimos `N` bytes do arquivo |
| -f, --follow | Mantém o arquivo aberto e exibe novas linhas em tempo real |

**Exemplos**

```bash
# exibe as 10 últimas linhas de `arquivo.txt`
tail arquivo.txt
```

```bash
# exibe as 20 últimas linhas
tail -n 20 arquivo.txt
```

```bash
# exibe os 100 últimos bytes
tail -c 100 arquivo.txt
```

```bash
# monitora o arquivo em tempo real (útil para logs)
tail -f /var/log/syslog
```

```bash
# exibe o arquivo a partir da 5ª linha até o fim
tail -n +5 arquivo.txt
```
