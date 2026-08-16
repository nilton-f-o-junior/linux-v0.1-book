# tar

Agrupa (e opcionalmente compacta) arquivos e diretórios em um único arquivo.

```bash
tar [opções] arquivo.tar arquivo [arquivo1]
```

| Argumento / Opção | Descrição |
|---|---|
| arquivo.tar | Nome do arquivo `.tar` a ser criado ou lido |
| arquivo | Localização do(s) arquivo(s) ou diretório(s) a serem agrupados |
| -c, --create | Cria um novo arquivo `.tar` |
| -x, --extract | Extrai o conteúdo de um arquivo `.tar` |
| -v, --verbose | Exibe os nomes dos arquivos processados durante a operação |
| -f, --file | Especifica o nome do arquivo `.tar` a ser usado (geralmente obrigatório) |
| -z, --gzip | Compacta/descompacta usando `gzip` (gera/lê arquivos `.tar.gz`) |
| -t, --list | Lista o conteúdo de um arquivo `.tar`, sem extraí-lo |

> `tar` originalmente apenas agrupa arquivos em um único pacote (sem compactar). Para compactar durante o processo, combine com a opção `-z` (gzip), gerando um arquivo `.tar.gz`.

**Exemplos**

```bash
# agrupa uma pasta em `arquivo.tar`
tar -cvf arquivo.tar pasta/
```

```bash
# extrai o conteúdo de `arquivo.tar`
tar -xvf arquivo.tar
```

```bash
# agrupa e compacta uma pasta em `arquivo.tar.gz`
tar -czvf arquivo.tar.gz pasta/
```

```bash
# extrai um arquivo `.tar.gz`
tar -xzvf arquivo.tar.gz
```

```bash
# lista o conteúdo de `arquivo.tar`, sem extraí-lo
tar -tvf arquivo.tar
```
