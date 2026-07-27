# shutdown

Desliga ou reinicia o sistema, podendo agendar a ação e avisar os usuários conectados antes de executá-la.

```bash
shutdown [opções] [tempo] ["mensagem"]
```

| Argumento / Opção | Descrição |
|---|---|
| tempo | Momento em que a ação ocorrerá: `now`, número de minutos, ou horário no formato `hh:mm` |
| "mensagem" | Texto de aviso exibido aos usuários conectados |
| -h | Desliga o sistema |
| -r | Reinicia o sistema, em vez de desligá-lo |
| -c | Cancela um desligamento agendado |
| -k | Apenas envia o aviso aos usuários, sem desligar ou reiniciar de fato |

> `shutdown` permite agendar a ação e notificar outros usuários antes de desligar ou reiniciar, o que o torna mais indicado para servidores com múltiplos usuários conectados.
> Executar `shutdown` normalmente exige privilégios de superusuário (`sudo`).

**Exemplos**

```bash
sudo shutdown -h now                       # desliga o sistema imediatamente
sudo shutdown -r now                       # reinicia o sistema imediatamente
sudo shutdown -h +10 "Manutenção em 10min" # agenda o desligamento em 10 minutos, com aviso
sudo shutdown -r 23:00                     # agenda a reinicialização para as 23h
sudo shutdown -c                           # cancela um desligamento agendado
```
