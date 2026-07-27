# chown

Altera o usuário e/ou grupo proprietário de um arquivo ou diretório.

```bash
chown [opções] usuário[:grupo] arquivo [arquivo1]
```

| Argumento / Opção | Descrição |
|---|---|
| usuário | Nome (ou número) do usuário que passará a ser o proprietário |
| grupo | Nome (ou número) do grupo que passará a ser o proprietário (opcional, precedido por `:`) |
| arquivo | Localização do arquivo ou diretório a ser alterado |
| -R, --recursive | Aplica a alteração recursivamente a diretórios e seus conteúdos |
| -v, --verbose | Exibe uma mensagem para cada arquivo processado |
| --reference=arquivo_ref | Usa o dono/grupo de `arquivo_ref` em vez de especificar diretamente |

> Alterar o proprietário de um arquivo geralmente requer permissões de superusuário. Para alterar apenas o grupo, sem mudar o usuário, prefira o comando `chgrp`.

**Exemplos**

```bash
sudo chown usuario arquivo.txt        # altera apenas o dono de `arquivo.txt` para `usuario`
sudo chown usuario:equipe arquivo.txt # altera o dono para `usuario` e o grupo para `equipe`
sudo chown -R usuario:equipe /var/www/site  # altera recursivamente o dono e o grupo de um diretório
sudo chown -v usuario arquivo.txt     # altera o dono e exibe uma mensagem de confirmação
sudo chown --reference=modelo.txt copia.txt # aplica o mesmo dono/grupo de `modelo.txt` a `copia.txt`
```
