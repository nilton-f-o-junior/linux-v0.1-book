# date

Exibe ou define a data e hora do sistema.

```bash
date [opções] [+formato]
```

| Argumento / Opção | Descrição |
|---|---|
| +formato | Define o formato de saída da data/hora usando símbolos (ex.: `%Y`, `%m`, `%d`) |
| -d, --date=string | Exibe a data/hora descrita em `string`, em vez da data/hora atual |
| -u, --utc | Exibe a data/hora em UTC (horário universal), em vez do horário local |
| -s, --set=string | Define a data/hora do sistema (geralmente requer permissão de superusuário) |

> Alguns símbolos comuns de formato: `%Y` (ano com 4 dígitos), `%m` (mês), `%d` (dia), `%H` (hora), `%M` (minuto), `%S` (segundo).

**Exemplos**

```bash
date                                  # exibe a data e hora atuais
date +%Y-%m-%d                        # exibe a data no formato ano-mês-dia
date +"%H:%M:%S"                      # exibe apenas o horário atual
date -u                               # exibe a data e hora atuais em UTC
date -d "yesterday"                   # exibe a data referente a ontem
sudo date -s "2026-07-27 10:00:00"    # define a data e hora do sistema
```
