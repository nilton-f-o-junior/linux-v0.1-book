# gdisk

Exibe e manipula a tabela de partições de discos que usam o padrão GPT.

```bash
gdisk [opções] dispositivo
```

| Argumento / Opção | Descrição |
|---|---|
| dispositivo | Localização do disco a ser manipulado (ex.: `/dev/sda`) |
| -l, --list | Lista as partições existentes de um dispositivo, sem entrar no modo interativo |
| p | (modo interativo) Exibe a tabela de partições |
| n | (modo interativo) Cria uma nova partição |
| d | (modo interativo) Exclui uma partição |
| w | (modo interativo) Grava as alterações no disco |
| q | (modo interativo) Sai sem salvar |

> `gdisk` funciona de forma parecida com o `fdisk`, mas é voltado para discos com tabela de partições **GPT**, em vez do padrão mais antigo **MBR**. Os comandos acima (`p`, `n`, `d`, `w`, `q`) são digitados dentro do modo interativo do próprio programa, não no terminal.
> Assim como o `fdisk`, alterar a tabela de partições é uma operação sensível e geralmente requer permissões de superusuário — erros podem causar perda de dados.

**Exemplos**

```bash
sudo gdisk -l /dev/sda                 # lista as partições GPT de um disco específico
sudo gdisk /dev/sda                    # abre o modo interativo para manipular as partições do disco
```
