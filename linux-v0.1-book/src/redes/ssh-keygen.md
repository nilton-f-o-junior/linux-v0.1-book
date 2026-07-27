# ssh-keygen

Gera o par de chaves (pública e privada) usado na autenticação sem senha via SSH.

```bash
ssh-keygen [opções]
```

| Argumento / Opção | Descrição |
|---|---|
| -t tipo | Define o tipo de criptografia da chave (ex.: `rsa`, `ed25519`) |
| -b tamanho | Define o tamanho (em bits) da chave, quando aplicável ao tipo escolhido |
| -f arquivo | Define o nome/local do arquivo onde a chave será salva |
| -C comentário | Adiciona um comentário à chave (geralmente um e-mail, para identificação) |

> Ao gerar o par de chaves, a chave privada (sem extensão, ex.: `id_rsa`) deve ser mantida em sigilo, enquanto a chave pública (com extensão `.pub`, ex.: `id_rsa.pub`) é copiada para o servidor remoto, através do comando `ssh-copy-id`.

**Exemplos**

```bash
ssh-keygen                                    # gera um novo par de chaves com as opções padrão
ssh-keygen -t ed25519                         # gera um par de chaves usando o tipo `ed25519`
ssh-keygen -t rsa -b 4096                     # gera um par de chaves RSA de 4096 bits
ssh-keygen -t ed25519 -C "email@exemplo.com"  # gera um novo par de chaves, com comentário
ssh-copy-id usuario@servidor.com              # copia a chave pública para o servidor remoto, habilitando login sem senha
```
