# sudo

Executa um comando com privilégios de outro usuário, geralmente do superusuário (root).

```bash
sudo [opções] comando
```

| Argumento / Opção | Descrição |
|---|---|
| comando | Comando a ser executado com privilégios elevados |
| -u usuário | Executa o comando como um usuário específico, em vez de root |
| -i | Executa o comando simulando o ambiente de login do usuário de destino |
| -s | Executa um shell com privilégios elevados |
| -l, --list | Lista os comandos que o usuário atual tem permissão de executar com `sudo` |

> `sudo` executa apenas um comando pontual com privilégios elevados, pedindo a senha do próprio usuário (não a do root), desde que ele tenha permissão configurada no arquivo `/etc/sudoers`.

**Exemplos**

```bash
sudo apt update                       # executa o comando `apt update` com privilégios de root
sudo -u usuario ls /home/usuario      # executa o comando como um usuário específico
sudo -i                               # abre um shell interativo como root
sudo -l                               # lista os comandos que o usuário atual pode executar com sudo
sudo systemctl restart nginx          # reinicia um serviço do sistema com privilégios elevados
```
