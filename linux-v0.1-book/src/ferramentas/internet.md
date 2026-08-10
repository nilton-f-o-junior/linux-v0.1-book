# Internet

O linux faz uso de 2 ferramentas para fazer a internet funcionar, são elas: networkmanager e nmcli.

- networkmanager: responsável por instalar tudo que é necessário para a internet funcionar no sistema, como: pacotes e modulos;
- nmcli: ferramenta que o usuário utiliza para interagir com o networmanager.

## Instalação

- Debian

```bash
sudo apt install network-manager  
```

- Fedora

```bash
sudo dnf install NetworkManager
```
- Arch 

```bash
sudo pacman -S networkmanager
```

## Ativação e Verificação

- Ativar

```bash
sudo systemctl enable --now NetworkManager
```

- Verificar

```bash
nmcli --version
nmcli general status
```

## Conectando

O networkmanager por padrão reconhece a conexão de internet via cabo, porém o mesmo não acontece para conexão wifi, logo:

- Verificar

```bash
# status
nmcli general status
```

- Listar

```bash
nmcli device wifi list
```

- Conectar

```bash
nmcli device wifi connect "SSID" password "senha"
```

## Comandos

### general

| Comando | Descrição |
|---|---|
| nmcli general status | Status geral (conectividade, estado do NM) |
| nmcli general hostname | Mostra o hostname |
| nmcli general hostname NOME | Altera o hostname |
| nmcli general logging | Mostra nível de log |
| nmcli general permissions | Permissões do usuário atual sobre o NM |

### networking

| Comando | Descrição |
|---|---|
| nmcli networking on | Habilita gerenciamento de rede |
| nmcli networking off | Desabilita (derruba tudo) |
| nmcli networking connectivity | Verifica conectividade com a internet |

### radio

| Comando | Descrição |
|---|---|
| nmcli radio wifi | Mostra se o wifi está ligado |
| nmcli radio wifi on\|off | Liga/desliga wifi |
| nmcli radio wwan | Mostra estado da rede móvel (3G/4G) |
| nmcli radio wwan on\|off | Liga/desliga rede móvel |
| nmcli radio all | Status de todos os rádios |

### device (dev)

| Comando | Descrição |
|---|---|
| nmcli device status | Lista devices e seus estados |
| nmcli device show | Detalhes de todos os devices |
| nmcli device show eth0 | Detalhes de um device específico |
| nmcli device connect eth0 | Conecta usando perfil existente/automático |
| nmcli device disconnect eth0 | Desconecta |
| nmcli device delete eth0 | Remove device virtual (ex: VPN) |
| nmcli device set eth0 managed yes\|no | Gerencia/libera controle do NM sobre o device |
| nmcli device monitor | Monitora eventos em tempo real |

### device wifi

| Comando | Descrição |
|---|---|
| nmcli device wifi list | Lista redes Wi-Fi visíveis |
| nmcli device wifi rescan | Força novo scan |
| nmcli device wifi connect "SSID" password "senha" | Conecta numa rede Wi-Fi |
| nmcli device wifi hotspot ifname wlan0 ssid "MeuAP" password "senha123" | Cria um hotspot |

### connection (con)

| Comando | Descrição |
|---|---|
| nmcli connection show | Lista todos os perfis salvos |
| nmcli connection show --active | Lista apenas os perfis ativos |
| nmcli connection show "nome" | Detalhes completos de um perfil |
| nmcli connection up "nome" | Ativa um perfil |
| nmcli connection down "nome" | Desativa um perfil |
| nmcli connection delete "nome" | Apaga um perfil |
| nmcli connection add type ethernet ifname eth0 con-name "nome" | Cria perfil Ethernet novo |
| nmcli connection add type wifi ifname wlan0 con-name "nome" ssid "SSID" | Cria perfil Wi-Fi novo |
| nmcli connection modify "nome" CAMPO valor | Edita um campo específico do perfil |
| nmcli connection edit "nome" | Modo interativo de edição |
| nmcli connection reload | Recarrega perfis do disco |
| nmcli connection clone "origem" "nome-novo" | Duplica um perfil existente |

### Campos comuns usados com connection modify

| Campo | Exemplo de valor | Descrição |
|---|---|---|
| ipv4.method | manual ou auto | Define modo de IP (estático ou DHCP) |
| ipv4.addresses | "192.168.1.50/24" | Endereço IP estático |
| ipv4.gateway | "192.168.1.1" | Gateway padrão |
| ipv4.dns | "8.8.8.8,1.1.1.1" | Servidores DNS |
| connection.autoconnect | yes ou no | Conecta automaticamente ao detectar o link |
| wifi-sec.psk | "senha" | Senha da rede Wi-Fi (WPA/WPA2) |

### monitor

| Comando | Descrição |
|---|---|
| nmcli monitor | Observa eventos de rede em tempo real (conecta/desconecta) |

### Flags globais (usadas antes do objeto)

| Flag | Descrição |
|---|---|
| -t | Terse: saída sem formatação, separada por : (ideal pra scripts) |
| -p | Pretty: saída formatada e legível |
| -f CAMPO1,CAMPO2 | Filtra campos específicos na saída |
| -a | Ask: pergunta interativamente campos faltando |
| -w SEGUNDOS | Define timeout máximo de espera |
