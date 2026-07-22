# Gerenciamento de Usuários e Grupos

O Linux é, por natureza, um sistema operacional multiusuário estruturado sob um princípio rígido de privilégios. Para garantir a segurança, o isolamento de dados e a organização do ecossistema, o administrador do sistema (root) precisa controlar quem possui acesso à máquina e a quais departamentos essas identidades pertencem.

## Criando e Administrando Usuários

A criação de uma nova identidade no sistema pode ser feita por duas abordagens que operam em camadas diferentes do sistema operacional:

- **useradd:** É o utilitário nativo de baixo nível. Ele cria o usuário de forma direta e "crua". O sistema registra a identidade binária, mas não configura um diretório pessoal (/home) ou uma senha inicial de forma automática, exigindo parametrização manual posterior.

```bash
useradd <nome-do-usuario>
```

- **adduser:** É um script de alto nível muito mais amigável e interativo. Ao ser executado, ele guia o administrador na configuração do perfil, gera automaticamente o diretório de início (/home/nome-do-usuario), copia os arquivos base de ambiente (como .bashrc) e solicita a criação da senha em tempo de execução.

```bash
adduser <nome-do-usuario>
```

## Auditoria e Exclusão de Contas

Para validar se as contas foram criadas corretamente ou para removê-las quando um usuário desliga-se do sistema, utilizamos os seguintes comandos:

```bash
# Verifica se o usuário foi registrado no arquivo de grupos do sistema
cat /etc/group | grep <nome-do-usuario>

# Valida a existência do usuário e o estado do hash da sua senha (requer sudo)
sudo cat /etc/shadow | grep <nome-do-usuario>

# Remove a conta do usuário do sistema
userdel <nome-do-usuario>
```

## Gerenciando Grupos no Linux

Os grupos funcionam como caixas organizacionais projetadas para simplificar a atribuição de permissões em massa. Em vez de dar acesso a um arquivo para cinquenta usuários individualmente, o administrador cria um grupo, coloca os usuários lá dentro e dá a permissão apenas ao grupo.

```bash
# Cria um novo grupo de segurança no sistema (ex: projetos)
groupadd projetos

# Lista todos os grupos existentes e seus respectivos IDs (GIDs)
cat /etc/group

# Adiciona um usuário a um grupo secundário (-a de append, -G de Group)
usermod -aG <nome-do-grupo> <nome-do-usuario>

# Verifica instantaneamente a quais grupos uma determinada conta pertence
groups <nome-do-usuario>

# Exclui um grupo do sistema operacional
groupdel <nome-do-grupo>
```
