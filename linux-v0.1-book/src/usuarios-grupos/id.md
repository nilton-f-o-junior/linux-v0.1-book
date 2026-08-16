# id

Exibe informações sobre o usuário e os grupos aos quais ele pertence.

```bash
id [opções] [usuário]
```

| Argumento / Opção | Descrição |
|---|---|
| usuário | Nome do usuário sobre o qual se deseja obter informações (padrão: usuário atual) |
| -u, --user | Exibe apenas o UID (identificador do usuário) |
| -g, --group | Exibe apenas o GID (identificador do grupo principal) |
| -G, --groups | Exibe todos os IDs de grupos aos quais o usuário pertence |
| -n, --name | Exibe o nome, em vez do número, ao ser usado junto com `-u`, `-g` ou `-G` |

> A saída padrão do `id` exibe três informações: `uid` (usuário), `gid` (grupo principal) e `groups` (todos os grupos aos quais o usuário pertence).

**Exemplos**

```bash
# exibe as informações do usuário atual
id
```

```bash
# exibe as informações de um usuário específico
id usuario
```

```bash
# exibe apenas o UID do usuário atual
id -u
```

```bash
# exibe apenas o nome do usuário atual
id -un
```

```bash
# exibe os nomes de todos os grupos do usuário atual
id -Gn
```
