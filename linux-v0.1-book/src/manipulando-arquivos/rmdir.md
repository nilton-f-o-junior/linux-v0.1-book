# rmdir

Remove diretórios vazios.

```bash
rmdir [opções] diretório [diretório1]
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
rmdir pasta                         # remove o diretório `pasta`, se estiver vazio
rmdir pasta1 pasta2                 # remove dois diretórios vazios em sequência
rmdir -p pasta/subpasta             # remove `subpasta` e depois `pasta`, se ambos ficarem vazios
rmdir -v pasta                      # remove o diretório e exibe uma mensagem confirmando a ação
rmdir pasta_com_arquivos            # gera erro, pois o diretório não está vazio
```
