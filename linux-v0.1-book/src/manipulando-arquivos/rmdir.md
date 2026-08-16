# rmdir

Remove diretórios vazios.

```bash
rmdir [opções] [diretório] [diretório1]
```

| Argumento / Opção | Descrição |
|---|---|
| diretório | Localização do diretório a ser removido |
| -p, --parents | Remove o diretório e também seus diretórios pais, caso fiquem vazios após a remoção |
| -v, --verbose | Exibe uma mensagem para cada diretório removido |
| --ignore-fail-on-non-empty | Ignora erros causados por diretórios não vazios |

> `rmdir` só remove diretórios vazios. Para remover diretórios com conteúdo, use `rm -r`.

**Exemplos**

```bash
# remove o diretório `pasta`, se estiver vazio
rmdir pasta
```

```bash
# remove dois diretórios vazios em sequência
rmdir pasta1 pasta2
```

```bash
# remove `subpasta` e depois `pasta`, se ambos ficarem vazios
rmdir -p pasta/subpasta
```

```bash
# remove o diretório e exibe uma mensagem confirmando a ação
rmdir -v pasta
```

```bash
# gera erro, pois o diretório não está vazio
rmdir pasta_com_arquivos
```
