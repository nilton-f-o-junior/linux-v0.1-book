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
# exibe a data e hora atuais
date
```

```bash
# exibe a data no formato ano-mês-dia
date +%Y-%m-%d
```

```bash
# exibe apenas o horário atual
date +"%H:%M:%S"
```

```bash
# exibe a data e hora atuais em UTC
date -u
```

```bash
# exibe a data referente a ontem
date -d "yesterday"
```

```bash
# define a data e hora do sistema
sudo date -s "2026-07-27 10:00:00"
```
