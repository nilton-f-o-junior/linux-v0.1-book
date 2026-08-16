# chgrp

Altera o grupo proprietário de um arquivo ou diretório.

```bash
chgrp [opções] grupo arquivo [arquivo1]
```

| Argumento / Opção | Descrição |
|---|---|
| grupo | Nome (ou número) do grupo que passará a ser o proprietário |
| arquivo | Localização do arquivo ou diretório a ser alterado |
| -R, --recursive | Aplica a alteração recursivamente a diretórios e seus conteúdos |
| -v, --verbose | Exibe uma mensagem para cada arquivo processado |
| --reference=arquivo_ref | Usa o grupo de `arquivo_ref` em vez de especificar o nome diretamente |

> Alterar o grupo de um arquivo geralmente requer que o usuário seja o dono do arquivo (e membro do grupo de destino) ou tenha permissões de superusuário.

**Exemplos**

```bash
# altera o grupo de `arquivo.txt` para `equipe`
chgrp equipe arquivo.txt
```

```bash
# altera o grupo recursivamente para todos os arquivos de um diretório
sudo chgrp -R equipe /var/www/site
```

```bash
# altera o grupo e exibe uma mensagem de confirmação
chgrp -v equipe arquivo.txt
```

```bash
# aplica o mesmo grupo de `modelo.txt` a `copia.txt`
chgrp --reference=modelo.txt copia.txt
```
