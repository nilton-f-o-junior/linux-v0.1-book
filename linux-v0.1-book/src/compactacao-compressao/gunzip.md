# gunzip

Descompacta arquivos compactados com o algoritmo gzip.

```bash
gunzip [opções] arquivo [arquivo1]
```

| Argumento / Opção | Descrição |
|---|---|
| arquivo | Localização do arquivo `.gz` a ser descompactado |
| -k, --keep | Mantém o arquivo compactado original, em vez de removê-lo após descompactar |
| -v, --verbose | Exibe informações sobre o processo de descompactação |
| -r, --recursive | Descompacta recursivamente todos os arquivos `.gz` de um diretório |
| -l, --list | Exibe informações sobre o conteúdo do arquivo compactado, sem descompactá-lo |

> `gunzip` é equivalente a `gzip -d`. Por padrão, remove o arquivo `.gz` original após a descompactação, substituindo-o pelo arquivo descompactado. Use `-k` para manter o arquivo compactado.

**Exemplos**

```bash
# descompacta `arquivo.txt.gz`, gerando `arquivo.txt`
gunzip arquivo.txt.gz
```

```bash
# descompacta mantendo o arquivo `.gz` original
gunzip -k arquivo.txt.gz
```

```bash
# descompacta exibindo informações do processo
gunzip -v arquivo.txt.gz
```

```bash
# exibe informações do arquivo compactado, sem descompactá-lo
gunzip -l arquivo.txt.gz
```

```bash
# descompacta recursivamente todos os arquivos `.gz` de um diretório
gunzip -r pasta/
```
