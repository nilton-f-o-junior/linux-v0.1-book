# mount

Monta um sistema de arquivos, tornando-o acessível em um diretório do sistema.

```bash
mount [opções] dispositivo diretório
```

| Argumento / Opção | Descrição |
|---|---|
| dispositivo | Localização do dispositivo ou partição a ser montado (ex.: `/dev/sdb1`) |
| diretório | Ponto de montagem, ou seja, o diretório onde o conteúdo será acessado |
| -t tipo | Especifica o tipo de sistema de arquivos (ex.: `ext4`, `ntfs`, `vfat`) |
| -o opções | Define opções de montagem, separadas por vírgula (ex.: `ro`, `rw`, `noexec`) |
| -a, --all | Monta todos os sistemas de arquivos listados em `/etc/fstab` |
| (sem argumentos) | Exibe todos os sistemas de arquivos atualmente montados |

> Sem argumentos, `mount` apenas lista o que já está montado no sistema. Para desmontar um sistema de arquivos, use o comando `umount`.

**Exemplos**

```bash
# lista todos os sistemas de arquivos montados
mount
```

```bash
# monta o dispositivo `/dev/sdb1` no diretório `/mnt/usb`
sudo mount /dev/sdb1 /mnt/usb
```

```bash
# monta especificando o tipo de sistema de arquivos
sudo mount -t ntfs /dev/sdb1 /mnt/usb
```

```bash
# monta o dispositivo em modo somente leitura
sudo mount -o ro /dev/sdb1 /mnt/usb
```

```bash
# monta todos os sistemas de arquivos listados em `/etc/fstab`
sudo mount -a
```
