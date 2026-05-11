# ls

Lista os arquivos de um diretório.

```bash
ls [opções] [caminho/arquivo] [caminho1/arquivo1]
```

| Argumento / Opção | Descrição |
|---|---|
| `caminho/arquivo` | Diretório ou arquivo a ser listado |
| `-a`, `--all` | Lista todos os arquivos, inclusive os ocultos |
| `-A`, `--almost-all` | Lista arquivos ocultos, exceto `.` e `..` |
| `-B`, `--ignore-backups` | Não lista arquivos que terminam com `~` (backup) |
| `--color=PARAM` | Coloriza a listagem: `never`, `always` ou `auto` |
| `-d`, `--directory` | Lista o nome do diretório em vez do seu conteúdo |
| `-f` | Não classifica a listagem |
| `-F` | Acrescenta um caractere identificador ao nome: `*` executável, `/` diretório, `=` socket, `@` link simbólico, `\|` pipe |
| `-G`, `--no-group` | Oculta a coluna de grupo |
| `-h`, `--human-readable` | Exibe tamanhos em KB, MB, GB (base 1024) |
| `-H` | Igual a `-h`, mas usa base 1000 |
| `-l` | Formato longo: exibe permissões, dono, grupo, tamanho e data |
| `-n` | Usa IDs numéricos de usuário e grupo em vez dos nomes |
| `-L`, `--dereference` | Lista o arquivo original em vez do link simbólico |
| `-o` | Listagem longa sem a coluna de dono (equivale a `-lG`) |
| `-p` | Igual a `-F`, mas sem o `*` em executáveis |
| `-R` | Lista diretórios e subdiretórios recursivamente |
| `-r` | Inverte a ordem de classificação |
| `-c` | Classifica pela data de alteração |
| `-X` | Classifica pela extensão |
| `-U` | Lista na ordem do diretório, sem classificar |
| `-Z` | Exibe o contexto SELinux de cada arquivo |
| `--full-time` | Exibe data e hora completas |

> A saída de `ls -la` segue o formato:
> `[permissões] [links] [dono] [grupo] [tamanho] [data] [nome]`
> Ex: `-rwxr-xr-- 1 joao users 8192 nov 4 16:00 teste`

**Exemplos**

```bash
ls                                  # lista os arquivos do diretório atual
ls /bin /sbin                       # lista os arquivos de `/bin` e `/sbin`
ls -a                               # lista todos os arquivos, incluindo ocultos
ls -l                               # listagem longa com permissões, dono, tamanho e data
ls -la /bin                         # listagem longa e completa de `/bin`, incluindo ocultos
ls -lh                              # listagem longa com tamanhos legíveis (KB, MB, GB)
ls -R                               # lista recursivamente diretórios e subdiretórios
ls -lX                              # listagem longa classificada por extensão
ls -lr                              # listagem em ordem inversa
ls --color=auto                     # coloriza a listagem conforme o tipo de arquivo
```
