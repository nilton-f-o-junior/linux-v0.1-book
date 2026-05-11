# rm

Apaga arquivos, diretórios e subdiretórios.

```bash
rm [opções] [caminho/arquivo] [caminho1/arquivo1]
```

| Argumento / Opção | Descrição |
|---|---|
| `caminho/arquivo` | Localização e nome do arquivo ou diretório a ser apagado |
| `-i`, `--interactive` | Pergunta antes de remover (padrão) |
| `-v`, `--verbose` | Exibe os arquivos enquanto são removidos |
| `-r`, `--recursive` | Remove arquivos em subdiretórios e os próprios subdiretórios |
| `-f`, `--force` | Remove sem perguntar, ignorando arquivos inexistentes |
| `-- arquivo` | Remove arquivos cujo nome contém caracteres especiais (`*`, `?`, `-`, etc.) |

> **Atenção:** arquivos removidos com `rm` não vão para a lixeira e não podem ser recuperados.

**Exemplos**

```bash
rm teste.txt                        # apaga `teste.txt` no diretório atual
rm *.txt                            # apaga todos os arquivos `.txt` do diretório atual
rm *.txt teste.novo                 # apaga todos os `.txt` e também `teste.novo`
rm -rf /tmp/teste/*                 # apaga todo o conteúdo de `/tmp/teste`, mas mantém o diretório
rm -rf /tmp/teste                   # apaga o diretório `/tmp/teste` e todo o seu conteúdo
rm -i *.txt                         # pergunta antes de apagar cada arquivo `.txt`
rm -v *.txt                         # exibe cada arquivo conforme é removido
rm -f -- --arquivo--                # remove o arquivo de nome `--arquivo--`
```
