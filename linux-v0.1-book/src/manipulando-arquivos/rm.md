# rm

Apaga arquivos, diretórios e subdiretórios.

```bash
rm [opções] [caminho/arquivo] [caminho1/arquivo1]
```

| Argumento / Opção | Descrição |
|---|---|
| caminho/arquivo | Localização e nome do arquivo ou diretório a ser apagado |
| -i, --interactive | Pergunta antes de remover cada arquivo |
| -v, --verbose | Exibe os arquivos enquanto são removidos |
| -r, --recursive | Remove arquivos em subdiretórios e os próprios subdiretórios |
| -f, --force | Remove sem perguntar, ignorando arquivos inexistentes |
| -- | Indica o fim das opções da linha de comando; útil para apagar arquivos cujo nome comece com traço (`-`) |

> Por padrão, o `rm` apaga os arquivos sem pedir confirmação. Use `-i` quando quiser que ele pergunte antes de remover.

> **Atenção:** arquivos removidos com `rm` não vão para a lixeira e não podem ser recuperados.

**Exemplos**

```bash
# apaga `teste.txt` no diretório atual
rm teste.txt
```

```bash
# apaga todos os arquivos `.txt` do diretório atual
rm *.txt
```

```bash
# apaga todos os `.txt` e também `teste.novo`
rm *.txt teste.novo
```

```bash
# apaga todo o conteúdo de `/tmp/teste`, mas mantém o diretório
rm -rf /tmp/teste/*
```

```bash
# apaga o diretório `/tmp/teste` e todo o seu conteúdo
rm -rf /tmp/teste
```

```bash
# pergunta antes de apagar cada arquivo `.txt`
rm -i *.txt
```

```bash
# exibe cada arquivo conforme é removido
rm -v *.txt
```

```bash
# remove o arquivo de nome `--arquivo--`
rm -f -- --arquivo--
```
