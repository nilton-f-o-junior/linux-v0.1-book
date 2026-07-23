# Gerenciamento de Usuários e Grupos

O Linux é, por natureza, um sistema operacional multiusuário estruturado sob um princípio rígido de privilégios. Para garantir a segurança, o isolamento de dados e a organização do ecossistema, o administrador do sistema (root) precisa controlar quem possui acesso à máquina e a quais departamentos essas identidades pertencem.

## Criando e Administrando Usuários

A criação de uma nova identidade no sistema pode ser feita por duas abordagens que operam em camadas diferentes do sistema operacional:


**useradd:** é o utilitário nativo de baixo nível. Ele cria o usuário de forma direta e “crua”: o sistema apenas registra a entrada do usuário no arquivo `/etc/passwd`, sem configurar automaticamente um diretório pessoal (`/home`) ou uma senha inicial, exigindo parametrização manual posterior.

```bash
useradd 
```


**adduser:** é um script de alto nível muito mais amigável e interativo. Ao ser executado, ele guia o administrador na configuração do perfil, gera automaticamente o diretório de início (`/home/nome-do-usuario`), copia os arquivos base de ambiente (como `.bashrc`) e solicita a criação da senha em tempo de execução.

```bash
adduser 
```

## Auditoria e Exclusão de Contas

Para validar se as contas foram criadas corretamente ou para removê-las quando um usuário deixa de fazer parte do sistema, utilizamos os seguintes comandos:

```bash
# verifica se o usuário foi registrado no arquivo central de contas do sistema
cat /etc/passwd | grep 

# valida a existência do usuário e o estado do hash da sua senha (requer sudo)
sudo cat /etc/shadow | grep 

# remove a conta do usuário do sistema
userdel 
```

## Gerenciando Grupos no Linux

Os grupos funcionam como caixas organizacionais projetadas para simplificar a atribuição de permissões em massa. Em vez de dar acesso a um arquivo para cinquenta usuários individualmente, o administrador cria um grupo, coloca os usuários lá dentro e dá a permissão apenas ao grupo.

```bash
# cria um novo grupo de segurança no sistema (ex: projetos)
groupadd projetos

# lista todos os grupos existentes e seus respectivos IDs (GIDs)
cat /etc/group

# adiciona um usuário a um grupo secundário (-a de append, -G de Group)
usermod -aG 

# verifica instantaneamente a quais grupos uma determinada conta pertence
groups 

# exclui um grupo do sistema operacional
groupdel 
```
