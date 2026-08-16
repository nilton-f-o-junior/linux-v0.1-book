# umount

Desmonta um sistema de arquivos previamente montado.

```bash
umount [opções] dispositivo|diretório
```

| Argumento / Opção | Descrição |
|---|---|
| dispositivo | Localização do dispositivo ou partição a ser desmontado (ex.: `/dev/sdb1`) |
| diretório | Ponto de montagem a ser desmontado (ex.: `/mnt/usb`) |
| -a, --all | Desmonta todos os sistemas de arquivos montados (exceto os essenciais ao sistema) |
| -f, --force | Força a desmontagem, mesmo que o sistema de arquivos esteja ocupado ou inacessível |
| -l, --lazy | Desmonta assim que possível, liberando o ponto de montagem imediatamente, mesmo que ainda esteja em uso |

> Ao tentar desmontar, o sistema pode recusar a operação caso o sistema de arquivos esteja em uso (ex.: um arquivo aberto ou um terminal com o diretório como local atual). Feche os programas relacionados antes de tentar novamente.

**Exemplos**

```bash
# desmonta o sistema de arquivos montado em `/mnt/usb`
sudo umount /mnt/usb
```

```bash
# desmonta o dispositivo `/dev/sdb1` diretamente
sudo umount /dev/sdb1
```

```bash
# força a desmontagem de um sistema de arquivos ocupado
sudo umount -f /mnt/usb
```

```bash
# desmonta de forma "preguiçosa", liberando o ponto de montagem
sudo umount -l /mnt/usb
```
