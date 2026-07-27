# gzip

Compacta arquivos usando o algoritmo gzip.

```bash
gzip [opções] arquivo [arquivo1]
```

| Argumento / Opção | Descrição |
|---|---|
| arquivo | Localização do arquivo a ser compactado |
| -d, --decompress | Descompacta um arquivo `.gz` (equivalente ao comando `gunzip`) |
| -k, --keep | Mantém o arquivo original, em vez de removê-lo após compactar/descompactar |
| -v, --verbose | Exibe informações sobre o processo, como a taxa de compressão |
| -r, --recursive | Compacta recursivamente todos os arquivos de um diretório |
| -1 a -9 | Define o nível de compressão (1 = mais rápido, 9 = compressão máxima) |

> Por padrão, `gzip` remove o arquivo original após a compactação, substituindo-o por um novo arquivo com extensão `.gz`. Use `-k` para manter o original. Para arquivos `.gz`, use `gunzip` ou `gzip -d` para descompactar.

**Exemplos**

```bash
gzip arquivo.txt                      # compacta `arquivo.txt`, gerando `arquivo.txt.gz`
gzip -k arquivo.txt                   # compacta mantendo o arquivo original
gzip -d arquivo.txt.gz                # descompacta `arquivo.txt.gz`
gzip -9 arquivo.txt                   # compacta usando o nível máximo de compressão
gzip -v arquivo.txt                   # compacta exibindo a taxa de compressão obtida
gzip -r pasta/                        # compacta recursivamente todos os arquivos de um diretório
```
