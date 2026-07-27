# ln

Cria links entre arquivos, permitindo que um mesmo conteúdo seja acessado por mais de um nome ou local.

```bash
ln [opções] alvo nome_do_link
```

| Argumento / Opção | Descrição |
|---|---|
| alvo | Arquivo ou diretório original ao qual o link vai apontar |
| nome_do_link | Nome (ou caminho) do link a ser criado |
| -s, --symbolic | Cria um link simbólico (soft link), em vez de um link físico (hard link) |
| -f, --force | Força a criação do link, substituindo o destino caso já exista |
| -v, --verbose | Exibe o nome de cada arquivo antes de criar o link (modo verboso) |
| -n | Trata o link simbólico como um arquivo comum ao apontar para um diretório existente |

> Por padrão, `ln` cria um link físico (hard link), que aponta diretamente para os mesmos dados no disco; para a maioria dos usos práticos, prefira `-s` para criar um link simbólico.
> Diferente do link físico, o link simbólico pode apontar para diretórios e para arquivos em outros sistemas de arquivos, mas deixa de funcionar caso o arquivo original seja removido ou movido.

**Exemplos**

```bash
ln arquivo.txt link_fisico.txt          # cria um link físico apontando para `arquivo.txt`
ln -s arquivo.txt link_simbolico.txt    # cria um link simbólico apontando para `arquivo.txt`
ln -s /var/www/html html                # cria um link simbólico para um diretório
ln -sf arquivo.txt link_simbolico.txt   # recria o link simbólico, substituindo-o se já existir
ln -sv arquivo.txt link_simbolico.txt   # cria o link simbólico exibindo o resultado da operação
```
