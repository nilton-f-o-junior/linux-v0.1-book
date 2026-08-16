# kill

Envia um sinal a um processo, geralmente para encerrá-lo.

```bash
kill [opções] PID [PID1]
```

| Argumento / Opção | Descrição |
|---|---|
| PID | Número de identificação do processo (Process ID) a ser sinalizado |
| -l, --list | Lista todos os sinais disponíveis |
| -9, -SIGKILL | Força o encerramento imediato do processo, sem chance de finalização controlada |
| -15, -SIGTERM | Solicita o encerramento normal do processo (sinal padrão) |
| -1, -SIGHUP | Reinicia o processo, recarregando sua configuração |

> `kill` não "mata" o processo diretamente — ele envia um sinal, e o comportamento depende de como o processo trata esse sinal. Use `-9` apenas quando o processo não responder ao sinal padrão.

**Exemplos**

```bash
# envia o sinal padrão (SIGTERM) para o processo de PID 1234
kill 1234
```

```bash
# força o encerramento imediato do processo 1234
kill -9 1234
```

```bash
# lista todos os sinais disponíveis
kill -l
```

```bash
# envia o sinal SIGHUP, recarregando a configuração do processo
kill -1 1234
```

```bash
# encerra processos pelo nome, sem precisar informar o PID
pkill firefox
```
