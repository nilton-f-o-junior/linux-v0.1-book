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
# exibe o nome atual do host
hostname
```

```bash
# exibe o endereço IP associado ao host
hostname -i
```

```bash
# exibe o nome de domínio totalmente qualificado (FQDN)
hostname -f
```

```bash
# altera o nome do host para `novo-nome` (temporariamente)
sudo hostname novo-nome
```
