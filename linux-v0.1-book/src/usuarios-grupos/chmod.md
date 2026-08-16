# chmod

Altera as permissões de acesso de um arquivo ou diretório.

```bash
chmod [opções] modo arquivo [arquivo1]
```

| Argumento / Opção | Descrição |
|---|---|
| modo | Permissões a serem aplicadas, em formato numérico (ex.: `755`) ou simbólico (ex.: `u+x`) |
| arquivo | Localização do arquivo ou diretório a ser alterado |
| -R, --recursive | Aplica a alteração recursivamente a diretórios e seus conteúdos |
| -v, --verbose | Exibe uma mensagem para cada arquivo processado |

> As permissões são divididas em três grupos: usuário dono (`u`), grupo (`g`) e outros (`o`). Cada um pode ter permissão de leitura (`r` = 4), escrita (`w` = 2) e execução (`x` = 1), que se somam no formato numérico (ex.: `7` = leitura + escrita + execução).

**Exemplos**

```bash
# dá permissão total ao dono e leitura/execução aos demais
chmod 755 script.sh
```

```bash
# adiciona permissão de execução para todos
chmod +x script.sh
```

```bash
# adiciona permissão de execução apenas para o dono
chmod u+x script.sh
```

```bash
# remove a permissão de escrita do grupo
chmod g-w arquivo.txt
```

```bash
# aplica a permissão recursivamente a todos os arquivos de um diretório
sudo chmod -R 644 /var/www/site
```

```bash
# altera a permissão e exibe uma mensagem de confirmação
chmod -v 700 arquivo_privado.txt
```
