# poweroff

Desliga o sistema imediatamente.

```bash
poweroff [opções]
```

| Argumento / Opção | Descrição |
|---|---|
| -f | Força o desligamento imediato, sem avisar outros processos |
| -p | Desliga o sistema desligando também a energia do hardware (padrão em `poweroff`) |
| --halt | Interrompe o sistema sem efetivamente desligar a energia |

> `poweroff` desliga o sistema imediatamente, sem opção de agendamento, sendo equivalente a `shutdown -h now`.
> Para agendar o desligamento ou avisar outros usuários antes de executá-lo, utilize `shutdown`.

**Exemplos**

```bash
# desliga o sistema imediatamente
sudo poweroff
```

```bash
# força o desligamento, sem avisar processos
sudo poweroff -f
```

```bash
# desliga o sistema via systemd
sudo systemctl poweroff
```
