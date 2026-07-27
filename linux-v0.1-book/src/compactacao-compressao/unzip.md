# unzip

Descompacta arquivos no formato `.zip`.

```bash
unzip [opções] arquivo.zip
```

| Argumento / Opção | Descrição |
|---|---|
| arquivo.zip | Localização do arquivo `.zip` a ser descompactado |
| -d diretório | Descompacta o conteúdo em um diretório específico, em vez do diretório atual |
| -l, --list | Lista o conteúdo do arquivo `.zip`, sem descompactá-lo |
| -o, --overwrite | Sobrescreve arquivos existentes sem pedir confirmação |
| -x arquivo | Exclui um arquivo específico da descompactação |

> Ao descompactar um arquivo `.zip` protegido por senha, o `unzip` solicita a senha automaticamente durante o processo.

**Exemplos**

```bash
unzip arquivo.zip                     # descompacta `arquivo.zip` no diretório atual
unzip arquivo.zip -d pasta_destino    # descompacta o conteúdo em um diretório específico
unzip -l arquivo.zip                  # lista o conteúdo do `.zip`, sem descompactar
unzip -o arquivo.zip                  # descompacta sobrescrevendo arquivos existentes sem confirmação
unzip -x "*.log" projeto.zip          # descompacta o arquivo, excluindo arquivos `.log`
```
