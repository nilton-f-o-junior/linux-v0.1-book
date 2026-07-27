# fstab

Arquivo de configuração que define os sistemas de arquivos a serem montados automaticamente durante a inicialização do sistema.

```bash
/etc/fstab
```

> Diferente dos demais itens deste material, `fstab` não é um comando, e sim um arquivo de texto localizado em `/etc/fstab`. Ele é lido pelo sistema no momento da inicialização (e por comandos como `mount -a`) para montar automaticamente as partições e dispositivos configurados.

**Estrutura de cada linha**

| Campo | Descrição |
|---|---|
| dispositivo | Localização do dispositivo/partição, ou identificador único (`UUID=...`) |
| ponto_de_montagem | Diretório onde o sistema de arquivos será montado (ex.: `/`, `/home`, `/mnt/dados`) |
| tipo | Tipo do sistema de arquivos (ex.: `ext4`, `ntfs`, `vfat`, `swap`) |
| opções | Opções de montagem, separadas por vírgula (ex.: `defaults`, `ro`, `noatime`) |
| dump | Define se o utilitário `dump` deve fazer backup do sistema de arquivos (`0` = não, `1` = sim) |
| pass | Define a ordem de verificação do sistema de arquivos pelo `fsck` na inicialização (`0` = não verificar) |

> Editar o `/etc/fstab` incorretamente pode impedir o sistema de inicializar corretamente. Sempre faça uma cópia de segurança do arquivo antes de modificá-lo, e teste as alterações com `sudo mount -a` antes de reiniciar.

**Exemplo de conteúdo**

```bash
UUID=1a2b3c4d-... /                ext4    defaults        0 1
UUID=5e6f7g8h-... /home            ext4    defaults        0 2
/dev/sdb1          /mnt/dados      ext4    defaults        0 2
/swapfile          none            swap    sw              0 0
```

**Exemplos de uso relacionado**

```bash
sudo nano /etc/fstab                   # edita o arquivo fstab
sudo mount -a                          # monta todos os sistemas de arquivos listados em `fstab`, sem reiniciar
blkid                                  # exibe os UUIDs dos dispositivos, úteis para configurar o `fstab`
```
