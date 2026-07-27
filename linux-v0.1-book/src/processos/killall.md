# killall

Envia um sinal a todos os processos que correspondem a um nome informado.

```bash
killall [opções] nome_do_processo
```

| Argumento / Opção | Descrição |
|---|---|
| nome_do_processo | Nome do processo (ou programa) cujas instâncias serão sinalizadas |
| -9, -SIGKILL | Força o encerramento imediato de todos os processos correspondentes |
| -i, --interactive | Pede confirmação antes de encerrar cada processo encontrado |
| -u usuário | Encerra apenas os processos pertencentes ao usuário informado |
| -v, --verbose | Exibe uma mensagem informando se o sinal foi enviado com sucesso |

> Diferente do `kill`, que exige o PID de um processo específico, o `killall` localiza e sinaliza todos os processos que correspondem ao nome informado, o que é útil quando um programa possui múltiplas instâncias em execução.

**Exemplos**

```bash
killall firefox                      # envia o sinal padrão (SIGTERM) para todas as instâncias do `firefox`
killall -9 firefox                    # força o encerramento imediato de todas as instâncias do `firefox`
killall -i chrome                     # pede confirmação antes de encerrar cada processo do `chrome`
killall -u usuario                    # encerra todos os processos pertencentes a um usuário específico
killall -v firefox                    # encerra os processos e exibe uma mensagem de confirmação
```
