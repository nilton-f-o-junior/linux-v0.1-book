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
# cria um arquivo de 2 GB para ser usado como swap
sudo fallocate -l 2G /swapfile
```

```bash
# restringe as permissões do arquivo de swap por segurança
sudo chmod 600 /swapfile
```

```bash
# formata o arquivo como área de swap
sudo mkswap /swapfile
```

```bash
# ativa o arquivo de swap
sudo swapon /swapfile
```

```bash
# desativa o arquivo de swap
sudo swapoff /swapfile
```

```bash
# lista as áreas de swap ativas
swapon -s
```

```bash
# exibe o uso de memória RAM e swap
free -h
```
