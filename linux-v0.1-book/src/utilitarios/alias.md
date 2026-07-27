# alias

Cria um atalho (apelido) para um comando ou sequência de comandos.

```bash
alias [nome[=valor] ...]
```

| Argumento / Opção | Descrição |
|---|---|
| nome | Nome do atalho a ser criado |
| valor | Comando (ou sequência de comandos) que o atalho vai executar |
| alias (sem argumentos) | Lista todos os aliases definidos na sessão atual |
| unalias nome | Remove um alias previamente criado |

> Aliases criados diretamente no terminal valem apenas para a sessão atual. Para torná-los permanentes, adicione-os ao arquivo `~/.bashrc` (ou `~/.zshrc`, dependendo do shell) e recarregue com `source ~/.bashrc`.

**Exemplos**

```bash
alias                                # lista todos os aliases definidos
alias ll='ls -la'                    # cria o atalho `ll` para `ls -la`
alias rm='rm -i'                     # cria o atalho `rm` para pedir confirmação antes de remover
alias atualizar='sudo apt update && sudo apt upgrade'   # cria um atalho para um comando composto
unalias ll                           # remove o alias `ll`
```
