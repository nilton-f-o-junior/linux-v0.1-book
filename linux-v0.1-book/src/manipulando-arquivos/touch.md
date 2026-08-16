# touch

Altera a data e hora de acesso/modificação de um arquivo. Se o arquivo não existir, cria um arquivo vazio.

```bash
touch [opções] [arquivos]
```

| Argumento / Opção | Descrição |
|---|---|
| arquivos | Arquivos que terão sua data e hora modificados |
| -t [ANO]MMDDhhmm[.ss] | Define data/hora manualmente: ano (opcional), mês, dia, hora, minuto e, opcionalmente, segundos |
| -a, --time=atime | Altera somente a data e hora de acesso |
| -m, --time=mtime | Altera somente a data e hora de modificação |
| -c, --no-create | Não cria o arquivo caso ele não exista |
| -r arquivo | Usa a data e hora de outro arquivo como referência |

**Exemplos**

```bash
# cria `arquivo.txt` vazio ou atualiza sua data/hora para agora
touch arquivo.txt
```

```bash
# cria ou atualiza a data/hora de múltiplos arquivos
touch a.txt b.txt c.txt
```

```bash
# atualiza a data/hora sem criar o arquivo caso não exista
touch -c arquivo.txt
```

```bash
# atualiza somente a data de acesso
touch -a arquivo.txt
```

```bash
# atualiza somente a data de modificação
touch -m arquivo.txt
```

```bash
# define a data/hora para 31 de dezembro às 18:30
touch -t 12311830 arquivo.txt
```

```bash
# define para 31/12/2023 às 18:30:00
touch -t 202312311830.00 arquivo.txt
```

```bash
# aplica a data/hora de `ref.txt` em `arquivo.txt`
touch -r ref.txt arquivo.txt
```
