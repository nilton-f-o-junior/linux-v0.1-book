# ip

Exibe e configura interfaces de rede, endereços, rotas e outros parâmetros de rede.

```bash
ip [opções] objeto comando
```

| Argumento / Opção | Descrição |
|---|---|
| objeto | Elemento de rede a ser consultado ou configurado (ex.: `addr`, `link`, `route`) |
| comando | Ação a ser executada sobre o objeto (ex.: `show`, `add`, `del`) |
| addr, a | Exibe ou configura endereços IP das interfaces |
| link, l | Exibe ou configura o estado das interfaces de rede (ex.: `up`, `down`) |
| route, r | Exibe ou configura a tabela de rotas |

> `ip` substitui o antigo `ifconfig` (e outras ferramentas do pacote `net-tools`) nas distribuições Linux atuais, oferecendo mais recursos e sendo o padrão recomendado hoje em dia.

**Exemplos**

```bash
ip addr show                               # exibe os endereços IP de todas as interfaces
ip a                                       # forma abreviada do comando acima
ip link show                               # exibe o estado de todas as interfaces de rede
sudo ip link set eth0 up                   # ativa a interface `eth0`
sudo ip addr add 192.168.1.10/24 dev eth0  # atribui um endereço IP à interface `eth0`
ip route show                              # exibe a tabela de rotas do sistema
```
