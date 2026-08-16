# ps

Exibe informações sobre os processos em execução no sistema.

```bash
ps [opções]
```

| Argumento / Opção | Descrição |
|---|---|
| a | Exibe os processos de todos os usuários associados a um terminal |
| u | Exibe informações detalhadas, incluindo usuário e uso de recursos |
| x | Inclui processos sem terminal associado (ex.: serviços em segundo plano) |
| -e, --everyone | Exibe todos os processos do sistema |
| -f, --full | Exibe uma listagem completa, com mais detalhes sobre cada processo |

> A combinação `ps aux` é uma das mais usadas, exibindo todos os processos do sistema com informações detalhadas, independentemente de terminal.

**Exemplos**

```bash
# exibe os processos do terminal atual
ps
```

```bash
# exibe todos os processos do sistema com detalhes
ps aux
```

```bash
# exibe todos os processos em formato completo
ps -ef
```

```bash
# filtra os processos relacionados ao `firefox`
ps aux | grep "firefox"
```

```bash
# exibe os processos de um usuário específico
ps -u usuario
```
