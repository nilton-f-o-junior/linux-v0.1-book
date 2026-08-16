# pwd

Exibe o caminho completo do diretório de trabalho atual.

```bash
pwd [opções]
```

| Argumento / Opção | Descrição |
|---|---|
| -L | Exibe o caminho lógico, considerando links simbólicos (padrão) |
| -P | Exibe o caminho físico, resolvendo links simbólicos até o diretório real |

> A variável de ambiente `$PWD` guarda o mesmo valor exibido por `pwd` e pode ser usada diretamente em scripts.
> Ao navegar por links simbólicos com `cd`, `pwd` mostra o caminho pelo qual você chegou até ali; use `-P` para ver o caminho real no disco.

**Exemplos**

```bash
# exibe o caminho do diretório atual
pwd
```

```bash
# exibe o caminho físico, resolvendo links simbólicos
pwd -P
```

```bash
# navega até `/var/www` e confirma o diretório atual
cd /var/www && pwd
```

```bash
# exibe o diretório atual usando a variável de ambiente
echo $PWD
```
