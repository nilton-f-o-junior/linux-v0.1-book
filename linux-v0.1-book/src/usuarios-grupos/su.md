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
# troca para o usuário root (pede a senha do root)
su
```

```bash
# troca para o root, carregando também seu ambiente completo
su -
```

```bash
# troca para o usuário `usuario` (pede a senha dele)
su usuario
```

```bash
# executa um único comando como root, sem abrir um novo shell
su -c "apt update"
```

```bash
# encerra a sessão como o outro usuário e retorna à anterior
exit
```
