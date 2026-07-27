# hostname

Exibe ou define o nome do host (nome da máquina) na rede.

```bash
hostname [opções] [novo_nome]
```

| Argumento / Opção | Descrição |
|---|---|
| novo_nome | Novo nome a ser atribuído ao host (geralmente requer permissão de superusuário) |
| -i, --ip-address | Exibe o(s) endereço(s) IP associado(s) ao host |
| -f, --fqdn | Exibe o nome de domínio totalmente qualificado (FQDN) |
| -d, --domain | Exibe apenas o nome do domínio DNS |

> Alterar o nome do host com `hostname novo_nome` costuma valer apenas para a sessão atual. Para tornar a mudança permanente, é necessário editar o arquivo `/etc/hostname` (e geralmente também `/etc/hosts`).

**Exemplos**

```bash
hostname                              # exibe o nome atual do host
hostname -i                           # exibe o endereço IP associado ao host
hostname -f                           # exibe o nome de domínio totalmente qualificado (FQDN)
sudo hostname novo-nome               # altera o nome do host para `novo-nome` (temporariamente)
```
