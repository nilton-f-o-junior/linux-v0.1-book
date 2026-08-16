# reboot

Reinicia o sistema.

```bash
reboot [opções]
```

| Argumento / Opção | Descrição |
|---|---|
| -f | Força a reinicialização imediata, sem avisar outros processos |
| -p | Desliga o sistema em vez de reiniciá-lo (equivalente a `poweroff`) |
| --halt | Interrompe o sistema sem desligar ou reiniciar |

> Em sistemas com `systemd`, `reboot` costuma ser um atalho para `systemctl reboot`, que encerra os serviços de forma organizada antes de reiniciar.
> Executar `reboot` normalmente exige privilégios de superusuário (`sudo`).

**Exemplos**

```bash
# reinicia o sistema de forma padrão
sudo reboot
```

```bash
# força a reinicialização imediata
sudo reboot -f
```

```bash
# reinicia o sistema via systemd
sudo systemctl reboot
```

```bash
# alternativa para reiniciar o sistema imediatamente
shutdown -r now
```
