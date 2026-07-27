# su

Troca o usuário da sessão atual, geralmente para o superusuário (root).

```bash
su [opções] [usuário]
```

| Argumento / Opção | Descrição |
|---|---|
| usuário | Nome do usuário para o qual deseja trocar (padrão: root) |
| -, -l, --login | Inicia uma sessão de login completa, carregando o ambiente do usuário de destino |
| -c, --command="comando" | Executa um único comando como o usuário de destino, sem abrir um novo shell |
| -s, --shell=shell | Define o shell a ser usado na nova sessão |

> `su` pede a senha do usuário de destino (não a do usuário atual) e permanece nesse usuário até que se digite `exit`, retornando à sessão anterior.

**Exemplos**

```bash
su                                    # troca para o usuário root (pede a senha do root)
su -                                  # troca para o root, carregando também seu ambiente completo
su usuario                            # troca para o usuário `usuario` (pede a senha dele)
su -c "apt update"                    # executa um único comando como root, sem abrir um novo shell
exit                                  # encerra a sessão como o outro usuário e retorna à anterior
```
