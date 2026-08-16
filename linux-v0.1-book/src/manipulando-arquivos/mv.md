# mv

Move ou renomeia arquivos e diretórios.

```bash
mv [opções] [origem] [destino]
```

| Argumento / Opção | Descrição |
|---|---|
| origem | Arquivo ou diretório a ser movido ou renomeado |
| destino | Caminho de destino ou novo nome do arquivo/diretório |
| -f, --force | Substitui o arquivo de destino sem perguntar |
| -i, --interactive | Pergunta antes de substituir um arquivo existente |
| -v, --verbose | Exibe os arquivos enquanto são movidos |
| -u, --update | Move somente se a origem é mais recente que o destino ou se o destino não existe |

> Por padrão, o `mv` substitui um arquivo de destino existente sem perguntar. Use `-i` quando quiser uma confirmação antes de sobrescrever.

> Diferente do `cp`, o `mv` apaga o arquivo de origem após a cópia — o resultado é semelhante a recortar e colar.

**Exemplos**

```bash
# renomeia `teste.txt` para `teste1.txt`
mv teste.txt teste1.txt
```

```bash
# move `teste.txt` para `/tmp` (origem é apagada)
mv teste.txt /tmp
```

```bash
# sobrescreve `teste.new` com `teste.txt` e apaga a origem
mv teste.txt teste.new
```

```bash
# pergunta antes de substituir caso já exista em `/tmp`
mv -i teste.txt /tmp
```

```bash
# move sem perguntar, substituindo o destino se existir
mv -f teste.txt /tmp
```

```bash
# move todos os arquivos `.txt` exibindo o progresso
mv -v *.txt /tmp
```

```bash
# move somente se `teste.txt` for mais recente que o destino
mv -u teste.txt /tmp
```
