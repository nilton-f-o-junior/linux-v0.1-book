# tree

Exibe a estrutura de diretórios e arquivos em formato de árvore.

```bash
tree [opções] [diretório]
```

| Argumento / Opção | Descrição |
|---|---|
| diretório | Localização do diretório a ser exibido (padrão: diretório atual) |
| -a | Exibe também arquivos e diretórios ocultos |
| -d | Lista apenas diretórios, sem arquivos |
| -L nível | Limita a profundidade de exibição ao número de níveis informado |
| -f | Exibe o caminho completo de cada arquivo/diretório |
| -h | Exibe o tamanho dos arquivos em formato legível (KB, MB, etc.) |

> `tree` normalmente não vem instalado por padrão em todas as distribuições. Pode ser necessário instalá-lo através do gerenciador de pacotes (ex.: `apt install tree`).

**Exemplos**

```bash
# exibe a árvore do diretório atual
tree
```

```bash
# exibe a árvore do diretório `/var/log`
tree /var/log
```

```bash
# exibe a árvore incluindo arquivos e diretórios ocultos
tree -a
```

```bash
# exibe apenas os diretórios, sem listar arquivos
tree -d
```

```bash
# exibe a árvore limitada a 2 níveis de profundidade
tree -L 2
```

```bash
# exibe a árvore com o tamanho dos arquivos
tree -h
```
