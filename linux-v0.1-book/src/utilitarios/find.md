# find

Localiza arquivos e diretórios em uma hierarquia, com base em critérios como nome, tipo, tamanho ou data.

```bash
find [diretório] [expressão]
```

| Argumento / Opção | Descrição |
|---|---|
| diretório | Local onde a busca será iniciada (padrão: diretório atual) |
| -name "padrão" | Busca por nome de arquivo, diferenciando maiúsculas de minúsculas |
| -iname "padrão" | Busca por nome de arquivo, ignorando maiúsculas e minúsculas |
| -type f/d | Filtra por tipo: `f` para arquivo, `d` para diretório |
| -size N | Filtra por tamanho (ex.: `+100M`, `-1G`) |
| -mtime N | Filtra por data de modificação, em dias (ex.: `-7` para os últimos 7 dias) |
| -exec comando {} \; | Executa um comando sobre cada resultado encontrado |

> O padrão informado em `-name` costuma exigir aspas (`"*.txt"`), evitando que o shell expanda o curinga antes de `find` recebê-lo.
> Para buscar apenas pelo conteúdo de arquivos de texto (em vez do nome), utilize `grep -r`.

**Exemplos**

```bash
# busca arquivos .txt no diretório atual e subdiretórios
find . -name "*.txt"
```

```bash
# busca ignorando maiúsculas/minúsculas em /home
find /home -iname "relatorio*"
```

```bash
# busca arquivos maiores que 100 MB
find /var/log -type f -size +100M
```

```bash
# busca diretórios chamados `backup`
find . -type d -name "backup"
```

```bash
# busca arquivos modificados nos últimos 7 dias
find /tmp -mtime -7
```

```bash
# busca e remove arquivos .log encontrados
find . -name "*.log" -exec rm {} \;
```
