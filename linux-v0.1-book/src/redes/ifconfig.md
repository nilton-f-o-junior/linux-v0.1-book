# ifconfig

Exibe e configura as interfaces de rede do sistema.

```bash
ifconfig [interface] [opções]
```

| Argumento / Opção | Descrição |
|---|---|
| interface | Nome da interface de rede a ser exibida ou configurada (ex.: `eth0`, `wlan0`) |
| up | Ativa a interface de rede informada |
| down | Desativa a interface de rede informada |
| netmask endereço | Define a máscara de rede da interface |
| (sem argumentos) | Exibe as informações de todas as interfaces de rede ativas |

> `ifconfig` faz parte do pacote `net-tools`, considerado obsoleto em muitas distribuições Linux atuais, que priorizam o comando `ip` em seu lugar (ex.: `ip addr` no lugar de `ifconfig`). Ainda assim, `ifconfig` continua amplamente usado e disponível na maioria dos sistemas.

**Exemplos**

```bash
# exibe as informações de todas as interfaces de rede ativas
ifconfig
```

```bash
# exibe as informações apenas da interface `eth0`
ifconfig eth0
```

```bash
# ativa a interface `eth0`
sudo ifconfig eth0 up
```

```bash
# desativa a interface `eth0`
sudo ifconfig eth0 down
```

```bash
# define um endereço IP e máscara de rede
sudo ifconfig eth0 192.168.1.10 netmask 255.255.255.0
```
