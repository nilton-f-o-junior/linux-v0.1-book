# cat.md

Mostra o conteúdo de um arquivo de texto ou binário.

```bash
cat [opções] [diretório/arquivo] [diretório1/arquivo1]
```

| Argumento / Opção | Descrição |
|---|---|
| `diretório/arquivo` | Localização do arquivo a ser visualizado |
| `-n`, `--number` | Exibe o número de cada linha |
| `-s`, `--squeeze-blank` | Suprime linhas em branco consecutivas, exibindo no máximo uma |
| `-` | Lê a entrada padrão (`stdin`) |

> Use `zcat` para visualizar diretamente arquivos compactados com gzip.

**Exemplos**

```bash
cat arquivo.txt                     # exibe o conteúdo de `arquivo.txt`
cat /usr/doc/copyright/GPL          # exibe o arquivo `GPL` usando caminho absoluto
cat arquivo1.txt arquivo2.txt       # exibe o conteúdo de dois arquivos em sequência
cat -n arquivo.txt                  # exibe o conteúdo com o número de cada linha
cat -s arquivo.txt                  # exibe o conteúdo suprimindo linhas em branco consecutivas
cat -n -s arquivo.txt               # combina numeração de linhas e supressão de linhas em branco
cat -                               # lê e exibe o que for digitado na entrada padrão (stdin)
```
