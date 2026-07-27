# uname

Exibe informações sobre o sistema operacional e o kernel.

```bash
uname [opções]
```

| Argumento / Opção | Descrição |
|---|---|
| -a, --all | Exibe todas as informações disponíveis |
| -s, --kernel-name | Exibe o nome do kernel (padrão, quando nenhuma opção é informada) |
| -r, --kernel-release | Exibe a versão (release) do kernel |
| -m, --machine | Exibe a arquitetura da máquina (ex.: `x86_64`) |
| -o, --operating-system | Exibe o nome do sistema operacional |

> Sem opções, `uname` exibe apenas o nome do kernel (equivalente a `-s`). Para uma visão completa do sistema, use `uname -a`.

**Exemplos**

```bash
uname                                 # exibe o nome do kernel
uname -a                              # exibe todas as informações do sistema
uname -r                              # exibe a versão do kernel
uname -m                              # exibe a arquitetura da máquina
uname -o                              # exibe o nome do sistema operacional
```
