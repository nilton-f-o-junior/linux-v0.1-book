# mv

Move ou renomeia arquivos e diretórios.

```bash
mv [opções] [origem] [destino]
```

| Argumento / Opção | Descrição |
|---|---|
| `origem` | Arquivo ou diretório a ser movido ou renomeado |
| `destino` | Caminho de destino ou novo nome do arquivo/diretório |
| `-f`, `--force` | Substitui o arquivo de destino sem perguntar |
| `-i`, `--interactive` | Pergunta antes de substituir (padrão) |
| `-v`, `--verbose` | Exibe os arquivos enquanto são movidos |
| `-u`, `--update` | Move somente se a origem é mais recente que o destino ou se o destino não existe |

> Diferente do `cp`, o `mv` apaga o arquivo de origem após a cópia — o resultado é semelhante a recortar e colar.

**Exemplos**

```bash
mv teste.txt teste1.txt             # renomeia `teste.txt` para `teste1.txt`
mv teste.txt /tmp                   # move `teste.txt` para `/tmp` (origem é apagada)
mv teste.txt teste.new              # sobrescreve `teste.new` com `teste.txt` e apaga a origem
mv -i teste.txt /tmp                # pergunta antes de substituir caso já exista em `/tmp`
mv -f teste.txt /tmp                # move sem perguntar, substituindo o destino se existir
mv -v *.txt /tmp                    # move todos os arquivos `.txt` exibindo o progresso
mv -u teste.txt /tmp                # move somente se `teste.txt` for mais recente que o destino
```
