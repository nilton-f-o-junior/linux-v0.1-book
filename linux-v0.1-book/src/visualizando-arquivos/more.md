# more

Exibe o conteúdo de um arquivo de forma paginada, permitindo rolar para frente.

```bash
more [opções] [diretório/arquivo]
```

| Argumento / Opção | Descrição |
|---|---|
| diretório/arquivo | Localização do arquivo a ser visualizado |
| -N | Define o número de linhas exibidas por página |
| +N | Inicia a exibição a partir da linha `N` |
| zmore | Variante para visualizar arquivos compactados com gzip |

> Durante a leitura: `espaço` avança uma página, `Enter` avança uma linha, `q` encerra.
> Para navegação bidirecional (rolar para cima), prefira `less`.

**Exemplos**

```bash
# exibe `arquivo.txt` de forma paginada
more arquivo.txt
```

```bash
# exibe 10 linhas por página
more -10 arquivo.txt
```

```bash
# inicia a exibição a partir da linha 20
more +20 arquivo.txt
```

```bash
# pagina a saída do comando `cat`
cat arquivo.txt | more
```

```bash
# pagina a listagem de um diretório longo
ls -la /etc | more
```

```bash
# exibe um arquivo compactado com gzip de forma paginada
zmore arquivo.txt.gz
```
