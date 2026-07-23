# Permissões

As permissões são as regras que ditam quem pode ler, modificar ou executar um conteúdo. Toda ação no terminal Linux depende estritamente do nível de privilégio que o usuário possui sobre o arquivo que tenta manipular.

Regra de Ouro da Propriedade:

No ecossistema Linux, um arquivo ou diretório só pode pertencer a um único usuário dono e a um único grupo dono por vez.

## Significado

Ao listar os detalhes de um arquivo no terminal com o comando `ls -l`, a primeira coluna exibe uma string de 10 caracteres (como `drwxr-xr-x`). Essa string indica exatamente quem pode fazer o que com o arquivo.


O primeiro caractere identifica a natureza do item:

- d: Diretório (pasta);

- -: Arquivo comum.


Os 9 caracteres seguintes são divididos em 3 blocos de 3, representando as categorias de agentes:

- u (user): o usuário proprietário (dono) do arquivo;

- g (group): o grupo associado ao arquivo;

- o (others): todos os demais usuários do sistema (o resto do mundo).


Dentro de cada bloco, existem três tipos de direitos fundamentais:

- r (read): permissão de leitura. Permite ver o conteúdo de um arquivo ou listar os itens de uma pasta;

- w (write): permissão de escrita. Permite modificar/deletar um arquivo ou criar itens dentro de uma pasta;

- x (execute): permissão de execução. Permite rodar um script/programa ou entrar e navegar em uma pasta.

## Representação Numérica

Para otimizar a atribuição de permissões, o Linux traduz os bits de leitura (r = 4), escrita (w = 2) e execução (x = 1) em um sistema somatório de base octal (valores de 0 a 7):

| Modo Numérico | Modo Simbólico | Significado Técnico | |

| **7** | `rwx` | Leitura, escrita e execução (Controle total) | |

| **6** | `rw-` | Leitura e escrita | |

| **5** | `r-x` | Leitura e execução | |

| **4** | `r--` | Apenas leitura | |

| **3** | `-wx` | Escrita e execução | |

| **2** | `-w-` | Apenas escrita | |

| **1** | `--x` | Apenas execução | |

| **0** | `---` | Nenhum acesso permitido | |

### Permissão 755

```bash
chmod 755 nome_do_arquivo.sh
```

- Ao aplicar a configuração 755 de forma recursiva (-R) em uma pasta, você está definindo:

- 7 (rwx) para o *user* (o dono pode ler, alterar e entrar na pasta);

- 5 (r-x) para o *group* (os membros do grupo podem ler e entrar, mas não apagar nada);

- 5 (r-x) para *others* (qualquer outro usuário do sistema pode ler e entrar, mas não alterar).

## Modificando Acessos

### Alteração de permissões com chmod

O comando `chmod` altera o comportamento dos bits de acesso usando a lógica numérica ou a simbólica:

```bash
# restringe o arquivo/diretório para uso exclusivo do proprietário (700)
chmod 700 

# remove de forma simbólica o direito de leitura (r) da categoria de outros (o)
chmod o-r 
```

### Alteração de propriedade com chown e chgrp

Para transferir a posse de um recurso para outro responsável ou setor do sistema:

```bash
# define um novo usuário dono para o arquivo ou diretório
chown 

# define unicamente um novo grupo proprietário para o alvo
chgrp 

# altera simultaneamente o usuário dono e o grupo associado (usando o separador ":")
chown : 
```

## Permissões Especiais: O SGID (g+s)

Em ambientes de trabalho colaborativos onde múltiplos usuários modificam a mesma estrutura de diretórios (uma pasta compartilhada de um projeto, por exemplo), surge um problema operacional: por padrão, novos arquivos criados herdam o grupo primário de quem os criou, o que pode bloquear o acesso do restante da equipe.

Para solucionar isso, aplica-se o bit especial SGID (Set Group ID):

```bash
chmod g+s 
```
