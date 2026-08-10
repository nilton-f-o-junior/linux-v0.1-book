# Bluetooth

O linux usa as ferramentas BLueZ + bluetoothctl para gerenciar o uso do bluetooth na maioria das distribuições.

- bluez: responsável por gerenciar todos os pacotes e modulos necessários para o bluetooth, funcionar no seu sistemal;
- bluetoothctl: é a ferramenta que permite o usuário utilizar tudo que o bluez permite de forma simples.

## Instalação

- Debian/Ubuntu

```bash
sudo apt install bluez
```

- Fedora

```bash
sudo dnf install bluez
```

- Arch

```bash
sudo pacman -S bluez bluez-utils
```
>> No Arch o bluez sozinho não traz o bluetoothctl, logo precisa do bluez-utils também.


## Habilitando e Iniciando

- Habilita

```bash
sudo systemctl enable --now bluetooth.service
```

- Verifica

```bash
systemctl status bluetooth.service
```

- Inicia

```bash
bluetoothctl
```

## Conectando Dispositivo

```bash
bluetoothctl
power on
agent on
default-agent
scan on
[espera aparecer o dispositivo, ex: fone "JBL Tune 500BT"]
scan off
pair AA:BB:CC:DD:EE:FF
trust AA:BB:CC:DD:EE:FF
connect AA:BB:CC:DD:EE:FF
info AA:BB:CC:DD:EE:FF
```

## Comandos do `bluetoothctl`

### Controle do adaptador

| Comando | Descrição |
|---|---|
| `power on` / `power off` | liga/desliga o adaptador Bluetooth |
| `show` | mostra info detalhada do adaptador (endereço, nome, etc.) |
| `list` | lista adaptadores disponíveis (se tiver mais de um) |
| `select XX:XX:XX:XX:XX:XX` | seleciona qual adaptador usar (multi-adapter) |
| `discoverable on` / `off` | torna seu PC visível para outros dispositivos |
| `pairable on` / `off` | permite/bloqueia que outros pareiem com você |

### Escaneamento e descoberta

| Comando | Descrição |
|---|---|
| `scan on` | começa a procurar dispositivos por perto |
| `scan off` | para de procurar |
| `devices` | lista todos os dispositivos já vistos/pareados |
| `devices Paired` | filtra só os pareados |
| `devices Connected` | filtra só os conectados |

### Pareamento e conexão

| Comando | Descrição |
|---|---|
| `agent on` | ativa o agente (necessário pra pareamento com PIN/confirmação) |
| `agent NoInputNoOutput` | tipo de agente sem PIN (útil pra dispositivos simples) |
| `default-agent` | define o agente ativo como padrão |
| `pair XX:XX:XX:XX:XX:XX` | inicia pareamento |
| `cancel-pairing XX:XX:XX:XX:XX:XX` | cancela pareamento em andamento |
| `trust XX:XX:XX:XX:XX:XX` | marca dispositivo como confiável (conecta automático depois) |
| `untrust XX:XX:XX:XX:XX:XX` | remove confiança |
| `connect XX:XX:XX:XX:XX:XX` | conecta a um dispositivo já pareado |
| `disconnect XX:XX:XX:XX:XX:XX` | desconecta |
| `remove XX:XX:XX:XX:XX:XX` | remove o pareamento (esquece o dispositivo) |

### Informações sobre dispositivos

| Comando | Descrição |
|---|---|
| `info XX:XX:XX:XX:XX:XX` | detalhes completos do dispositivo (bateria, serviços, UUID, RSSI, etc.) |

### Menus especiais (dentro do bluetoothctl)

| Comando | Descrição |
|---|---|
| `menu gatt` | entra no menu GATT (pra dispositivos BLE, sensores, etc.) |
| `menu advertise` | configura advertising (transformar seu PC em "anunciante" BLE) |
| `menu scan` | opções avançadas de scan (filtro por RSSI, UUID, etc.) |
| `back` | sai de um submenu e volta ao principal |

### Outros úteis

| Comando | Descrição |
|---|---|
| `version` | versão do BlueZ |
| `help` | lista todos os comandos disponíveis (completo) |
| `exit` / `quit` | sai do bluetoothctl |
