# cfdisk

Exibe e manipula a tabela de partições de discos através de uma interface em modo texto (curses).

```bash
cfdisk [opções] [dispositivo]
```

| Argumento / Opção | Descrição |
|---|---|
| dispositivo | Localização do disco a ser manipulado (ex.: `/dev/sda`) |
| -z, --zero | Inicia com uma tabela de partições em branco, ignorando a existente |
| ↑ / ↓ | Navega entre as partições listadas |
| ← / → | Navega entre as opções do menu (New, Delete, Write, Quit, etc.) |
| Enter | Confirma a opção selecionada no menu |

> `cfdisk` funciona de forma parecida com o `fdisk`, mas oferece uma interface visual mais amigável, navegável pelo teclado, em vez de comandos digitados por letra. Ele detecta automaticamente se o disco usa tabela **MBR** ou **GPT**.
> Assim como o `fdisk`, alterar a tabela de partições é uma operação sensível e geralmente requer permissões de superusuário — erros podem causar perda de dados.

**Exemplos**

```bash
sudo cfdisk /dev/sda                  # abre a interface interativa para manipular as partições do disco
sudo cfdisk -z /dev/sdb                # abre a interface iniciando com uma tabela de partições em branco
```
