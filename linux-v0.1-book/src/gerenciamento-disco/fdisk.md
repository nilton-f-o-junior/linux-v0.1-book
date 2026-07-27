# fdisk

Exibe e manipula a tabela de partições de discos de armazenamento.

```bash
fdisk [opções] dispositivo
```

| Argumento / Opção | Descrição |
|---|---|
| dispositivo | Localização do disco a ser manipulado (ex.: `/dev/sda`) |
| -l, --list | Lista as partições existentes de um ou mais dispositivos |
| -u | Exibe os tamanhos em setores, em vez de cilindros |
| p | (modo interativo) Exibe a tabela de partições |
| n | (modo interativo) Cria uma nova partição |
| d | (modo interativo) Exclui uma partição |
| w | (modo interativo) Grava as alterações no disco |
| q | (modo interativo) Sai sem salvar |

> `fdisk` é executado em modo interativo, onde os comandos acima (`p`, `n`, `d`, `w`, `q`) são digitados dentro do próprio programa, não no terminal.
> Alterar a tabela de partições é uma operação sensível e geralmente requer permissões de superusuário — erros podem causar perda de dados.

**Exemplos**

```bash
sudo fdisk -l                           # lista as partições de todos os discos do sistema
sudo fdisk -l /dev/sda                  # lista as partições de um disco específico
sudo fdisk /dev/sda                     # abre o modo interativo para manipular as partições do disco
```
