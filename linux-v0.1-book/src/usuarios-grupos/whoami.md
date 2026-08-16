# whoami

Exibe o nome do usuário atualmente logado na sessão.

```bash
whoami
```

| Argumento / Opção | Descrição |
|---|---|
| (nenhum) | O comando `whoami` não recebe argumentos ou opções |

> `whoami` é equivalente a `id -un`, exibindo apenas o nome do usuário efetivo da sessão atual — útil, por exemplo, para verificar se você está operando como root após um `sudo -i` ou `su`.

**Exemplos**

```bash
# exibe o nome do usuário atual
whoami
```

```bash
# confirma que os privilégios foram elevados, exibindo `root`
sudo whoami
```
