# free

Exibe a quantidade de memória livre e utilizada no sistema, incluindo memória RAM e swap.

```bash
free [opções]
```

| Argumento / Opção | Descrição |
|---|---|
| -h | Exibe os valores em formato legível (KB, MB, GB) |
| -m | Exibe os valores em megabytes |
| -g | Exibe os valores em gigabytes |
| -s N | Atualiza a exibição a cada `N` segundos, continuamente |
| -t | Exibe uma linha adicional com o total de memória RAM e swap somados |
| -c N | Repete a exibição `N` vezes (usado junto com `-s`) |

> A coluna `available` costuma ser mais representativa do que `free` para saber quanta memória ainda pode ser usada por novos processos, já que o Linux reaproveita memória livre para cache.
> Para acompanhar o uso de memória por processo individual, utilize `top` ou `htop`.

**Exemplos**

```bash
# exibe o uso de memória em blocos de 1K
free
```

```bash
# exibe os valores em formato legível
free -h
```

```bash
# exibe os valores em megabytes
free -m
```

```bash
# exibe os valores legíveis com o total geral
free -h -t
```

```bash
# atualiza a exibição a cada 5 segundos
free -h -s 5
```

```bash
# atualiza a cada 2 segundos, repetindo 3 vezes
free -h -s 2 -c 3
```
