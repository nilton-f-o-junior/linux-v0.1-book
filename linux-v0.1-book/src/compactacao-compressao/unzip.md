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
# descompacta `arquivo.zip` no diretório atual
unzip arquivo.zip
```

```bash
# descompacta o conteúdo em um diretório específico
unzip arquivo.zip -d pasta_destino
```

```bash
# lista o conteúdo do `.zip`, sem descompactar
unzip -l arquivo.zip
```

```bash
# descompacta sobrescrevendo arquivos existentes sem confirmação
unzip -o arquivo.zip
```

```bash
# descompacta o arquivo, excluindo arquivos `.log`
unzip -x "*.log" projeto.zip
```
