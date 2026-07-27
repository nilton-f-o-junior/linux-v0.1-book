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
chgrp equipe arquivo.txt              # altera o grupo de `arquivo.txt` para `equipe`
sudo chgrp -R equipe /var/www/site    # altera o grupo recursivamente para todos os arquivos de um diretório
chgrp -v equipe arquivo.txt           # altera o grupo e exibe uma mensagem de confirmação
chgrp --reference=modelo.txt copia.txt # aplica o mesmo grupo de `modelo.txt` a `copia.txt`
```
