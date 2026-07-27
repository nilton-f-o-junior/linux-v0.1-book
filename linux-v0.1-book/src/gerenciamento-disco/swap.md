# swap

Espaço em disco usado pelo sistema como extensão da memória RAM, quando ela se esgota.

**Comandos relacionados**

| Comando | Descrição |
|---|---|
| mkswap | Formata um dispositivo ou arquivo para ser usado como área de swap |
| swapon | Ativa uma área de swap já formatada |
| swapoff | Desativa uma área de swap ativa |
| swapon -s | Exibe as áreas de swap atualmente ativas |
| free -h | Exibe o uso de memória RAM e swap, em formato legível |

> Áreas de swap também podem ser configuradas para ativação automática na inicialização, através do arquivo `/etc/fstab`.

**Exemplos**

```bash
sudo fallocate -l 2G /swapfile        # cria um arquivo de 2 GB para ser usado como swap
sudo chmod 600 /swapfile              # restringe as permissões do arquivo de swap por segurança
sudo mkswap /swapfile                 # formata o arquivo como área de swap
sudo swapon /swapfile                 # ativa o arquivo de swap
sudo swapoff /swapfile                # desativa o arquivo de swap
swapon -s                             # lista as áreas de swap ativas
free -h                               # exibe o uso de memória RAM e swap
```
