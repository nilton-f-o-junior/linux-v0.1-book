# less

Exibe o conteúdo de um arquivo de forma paginada, permitindo rolar para frente e para trás.

```bash
less [opções] [diretório/arquivo]
```

| Argumento / Opção | Descrição |
|---|---|
| `diretório/arquivo` | Localização do arquivo a ser visualizado |
| `-N`, `--LINE-NUMBERS` | Exibe o número de cada linha |
| `-S`, `--chop-long-lines` | Trunca linhas longas em vez de quebrá-las |
| `+N` | Inicia a exibição a partir da linha `N` |
| `zless` | Variante para visualizar arquivos compactados com gzip |

> Durante a leitura: `espaço` avança uma página, `b` volta uma página, `/texto` busca, `q` encerra.
> Ao contrário de `more`, o `less` não carrega o arquivo inteiro na memória — ideal para arquivos grandes.

**Exemplos**

```bash
less arquivo.txt                    # exibe `arquivo.txt` de forma paginada
less -N arquivo.txt                 # exibe com numeração de linhas
less -S arquivo.txt                 # trunca linhas longas sem quebra
less +20 arquivo.txt                # inicia a exibição a partir da linha 20
cat arquivo.txt | less              # pagina a saída do comando `cat`
ls -la /etc | less                  # pagina a listagem de um diretório longo
zless arquivo.txt.gz                # exibe um arquivo compactado com gzip de forma paginada
```
