# cp

Copia arquivos e diretórios.

```bash
cp [opções] [origem] [destino]
```

| Argumento / Opção | Descrição |
|---|---|
| `origem` | Arquivo ou diretório a ser copiado; aceita múltiplos arquivos e coringas |
| `destino` | Caminho ou nome de destino; se for um diretório, os arquivos são copiados para dentro dele |
| `-i`, `--interactive` | Pergunta antes de substituir um arquivo existente |
| `-f`, `--force` | Substitui arquivos existentes sem perguntar |
| `-r` | Copia arquivos de diretórios e subdiretórios; prefira `-R` |
| `-R`, `--recursive` | Copia arquivos e subdiretórios, incluindo arquivos especiais FIFO e dispositivos |
| `-v`, `--verbose` | Exibe os arquivos enquanto são copiados |
| `-s`, `--symbolic-link` | Cria link simbólico no destino em vez de copiar |
| `-l`, `--link` | Cria hard link no destino em vez de copiar |
| `-p`, `--preserve` | Preserva atributos do arquivo (permissões, datas, etc.) |
| `-u`, `--update` | Copia somente se a origem é mais recente que o destino ou se o destino não existe |
| `-x` | Não copia arquivos localizados em um sistema de arquivos diferente do de origem |

**Exemplos**

```bash
cp teste.txt teste1.txt             # copia `teste.txt` para `teste1.txt` no mesmo diretório
cp teste.txt /tmp                   # copia `teste.txt` para dentro do diretório `/tmp`
cp * /tmp                           # copia todos os arquivos do diretório atual para `/tmp`
cp /bin/* .                         # copia todos os arquivos de `/bin` para o diretório atual
cp -R /bin /tmp                     # copia o diretório `/bin` e todo o seu conteúdo para `/tmp`
cp -R /bin/* /tmp                   # copia o conteúdo de `/bin` (sem o diretório em si) para `/tmp`
cp -i teste.txt /tmp                # pergunta antes de substituir caso já exista em `/tmp`
cp -u teste.txt /tmp                # copia somente se `teste.txt` for mais recente que o destino
cp -v * /tmp                        # copia todos os arquivos exibindo o progresso
cp -p teste.txt /tmp                # copia preservando permissões e datas do arquivo
```
