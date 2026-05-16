# touch

Altera a data e hora de acesso/modificação de um arquivo. Se o arquivo não existir, cria um arquivo vazio.

```bash
touch [opções] [arquivos]
```

| Argumento / Opção | Descrição |
|---|---|
| `arquivos` | Arquivos que terão sua data e hora modificados |
| `-t MMDDhhmm[ANO.ss]` | Define data/hora manualmente: mês, dia, hora, minuto e opcionalmente ano e segundos |
| `-a`, `--time=atime` | Altera somente a data e hora de acesso |
| `-m`, `--time=mtime` | Altera somente a data e hora de modificação |
| `-c`, `--no-create` | Não cria o arquivo caso ele não exista |
| `-r arquivo` | Usa a data e hora de outro arquivo como referência |

**Exemplos**

```bash
touch arquivo.txt                     # cria `arquivo.txt` vazio ou atualiza sua data/hora para agora
touch a.txt b.txt c.txt               # cria ou atualiza a data/hora de múltiplos arquivos
touch -c arquivo.txt                  # atualiza a data/hora sem criar o arquivo caso não exista
touch -a arquivo.txt                  # atualiza somente a data de acesso
touch -m arquivo.txt                  # atualiza somente a data de modificação
touch -t 12311830 arquivo.txt         # define a data/hora para 31 de dezembro às 18:30
touch -t 202312311830.00 arquivo.txt  # define para 31/12/2023 às 18:30:00
touch -r ref.txt arquivo.txt          # aplica a data/hora de `ref.txt` em `arquivo.txt`
```
