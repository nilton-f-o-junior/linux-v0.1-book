# zip

Compacta arquivos e diretórios no formato `.zip`.

```bash
zip [opções] arquivo.zip arquivo [arquivo1]
```

| Argumento / Opção | Descrição |
|---|---|
| arquivo.zip | Nome do arquivo compactado a ser criado |
| arquivo | Localização do(s) arquivo(s) ou diretório(s) a serem compactados |
| -r, --recurse-paths | Compacta diretórios recursivamente, incluindo subpastas e arquivos |
| -e, --encrypt | Compacta protegendo o conteúdo com senha |
| -x arquivo | Exclui um arquivo específico da compactação |
| -9 | Define o nível máximo de compressão |

> Diferente do `gzip`, o `zip` pode compactar múltiplos arquivos e diretórios em um único arquivo `.zip`, sem removê-los do local original.

**Exemplos**

```bash
# compacta `arquivo.txt` em `arquivo.zip`
zip arquivo.zip arquivo.txt
```

```bash
# compacta dois arquivos em um único `.zip`
zip arquivo.zip arquivo1.txt arquivo2.txt
```

```bash
# compacta um diretório inteiro, incluindo subpastas
zip -r pasta.zip pasta/
```

```bash
# compacta protegendo o arquivo com senha
zip -e protegido.zip arquivo.txt
```

```bash
# compacta um diretório, excluindo arquivos `.log`
zip -r -x "*.log" projeto.zip projeto/
```
