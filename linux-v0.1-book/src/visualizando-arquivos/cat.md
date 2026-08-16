# cat

Mostra o conteúdo de um arquivo de texto.

```bash
cat [opções] [arquivo]
```

| Argumento / Opção | Descrição |
|---|---|
| arquivo | Localização do arquivo a ser visualizado |
| -n, --number| Exibe o número de cada linha |
| -s, --squeeze-blank | Suprime linhas em branco consecutivas, exibindo no máximo uma |
| - | Lê a entrada padrão (`stdin`), ou seja, o que é digitado ou enviado por outro comando via pipe |

> Use `zcat` para visualizar diretamente arquivos compactados com gzip.

**Exemplos**

```bash
# exibe o conteúdo de `arquivo.txt`
cat arquivo.txt
```

```bash
# exibe o arquivo `GPL` usando caminho absoluto
cat /usr/doc/copyright/GPL
```

```bash
# exibe o conteúdo de dois arquivos em sequência
cat arquivo1.txt arquivo2.txt
```

```bash
# exibe o conteúdo com o número de cada linha
cat -n arquivo.txt
```

```bash
# exibe o conteúdo suprimindo linhas em branco consecutivas
cat -s arquivo.txt
```

```bash
# combina numeração de linhas e supressão de linhas em branco
cat -n -s arquivo.txt
```

```bash
# lê e exibe o que for digitado na entrada padrão (stdin)
cat -
```
