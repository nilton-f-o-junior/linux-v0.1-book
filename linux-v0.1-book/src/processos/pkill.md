# pkill

Envia um sinal a processos com base no nome ou em outros critérios de correspondência.

```bash
pkill [opções] padrão
```

| Argumento / Opção | Descrição |
|---|---|
| padrão | Nome (ou expressão) usado para localizar os processos a serem sinalizados |
| -9, -SIGKILL | Força o encerramento imediato dos processos correspondentes |
| -f, --full | Considera a linha de comando completa na busca, não apenas o nome do processo |
| -u usuário | Sinaliza apenas os processos pertencentes ao usuário informado |
| -i, --ignore-case | Ignora diferenças entre maiúsculas e minúsculas na busca |

> `pkill` é semelhante ao `killall`, mas permite buscas mais flexíveis, como por expressões regulares e por trechos da linha de comando (`-f`), em vez de exigir o nome exato do processo.

**Exemplos**

```bash
# envia o sinal padrão (SIGTERM) para processos chamados `firefox`
pkill firefox
```

```bash
# força o encerramento imediato dos processos `firefox`
pkill -9 firefox
```

```bash
# encerra processos cuja linha de comando completa corresponda ao padrão
pkill -f "python script.py"
```

```bash
# encerra todos os processos pertencentes a um usuário específico
pkill -u usuario
```

```bash
# busca ignorando diferenças entre maiúsculas e minúsculas
pkill -i FIREFOX
```
