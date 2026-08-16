# history

Exibe o histórico de comandos digitados no terminal.

```bash
history [opções] [N]
```

| Argumento / Opção | Descrição |
|---|---|
| N | Exibe apenas os últimos `N` comandos do histórico |
| -c | Limpa todo o histórico de comandos da sessão atual |
| -d posição | Remove uma entrada específica do histórico, pela posição informada |
| !N | Executa novamente o comando de número `N` do histórico |
| !! | Executa novamente o último comando digitado |

> O histórico é armazenado por padrão no arquivo `~/.bash_history` (ou equivalente, dependendo do shell) e é salvo ao encerrar a sessão do terminal.

**Exemplos**

```bash
# exibe todo o histórico de comandos
history
```

```bash
# exibe os últimos 10 comandos digitados
history 10
```

```bash
# limpa o histórico da sessão atual
history -c
```

```bash
# remove o comando de número 42 do histórico
history -d 42
```

```bash
# executa novamente o último comando
!!
```

```bash
# executa novamente o comando de número 25 do histórico
!25
```
