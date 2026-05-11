# mkdir

Cria um diretório no sistema.

```bash
mkdir [opções] [caminho/diretório] [caminho1/diretório1]
```

| Argumento / Opção | Descrição |
|---|---|
| `caminho` | Caminho onde o diretório será criado |
| `diretório` | Nome do diretório que será criado |
| `-p` | Cria os diretórios intermediários que ainda não existem |
| `--verbose` | Exibe uma mensagem para cada diretório criado |

**Exemplos**

```bash
mkdir projetos                      # cria o diretório `projetos` no diretório atual
mkdir /home/user/documentos/notas   # cria o diretório `notas` em um caminho absoluto
mkdir docs imagens videos           # cria três diretórios de uma só vez
mkdir -p projeto/src/componentes    # cria toda a cadeia de diretórios, mesmo que `projeto` e `src` ainda não existam
mkdir --verbose novo-site           # cria o diretório e exibe: mkdir: criado diretório 'novo-site'
mkdir -p --verbose a/b/c            # cria os diretórios intermediários e exibe uma mensagem para cada um criado
```
