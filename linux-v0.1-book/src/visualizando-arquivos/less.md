# less

Exibe o conteúdo de um arquivo de forma paginada, permitindo rolar para frente e para trás.

```bash
less [opções] [arquivo]
```

| Argumento / Opção | Descrição |
|---|---|
| arquivo | Localização do arquivo a ser visualizado |
| -N, --LINE-NUMBERS | Exibe o número de cada linha |
| -S, --chop-long-lines | Trunca linhas longas em vez de quebrá-las |
| +N | Inicia a exibição a partir da linha `N` |
| zless | Variante para visualizar arquivos compactados com gzip |

> Durante a leitura: `espaço` avança uma página, `b` volta uma página, `/texto` busca, `q` encerra.
> Ao contrário de `more`, o `less` não carrega o arquivo inteiro na memória — ideal para arquivos grandes.

**Exemplos**

```bash
# exibe `arquivo.txt` de forma paginada
less arquivo.txt
```

```bash
# exibe com numeração de linhas
less -N arquivo.txt
```

```bash
# trunca linhas longas sem quebra
less -S arquivo.txt
```

```bash
# inicia a exibição a partir da linha 20
less +20 arquivo.txt
```

```bash
# pagina a saída do comando `cat`
cat arquivo.txt | less
```

```bash
# pagina a listagem de um diretório longo
ls -la /etc | less
```

```bash
# exibe um arquivo compactado com gzip de forma paginada
zless arquivo.txt.gz
```
