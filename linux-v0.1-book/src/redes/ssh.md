# ssh

Conecta-se de forma segura a outro computador através da rede, permitindo acesso remoto ao terminal.

```bash
ssh [opções] usuário@host
```

| Argumento / Opção | Descrição |
|---|---|
| usuário | Nome do usuário a ser usado na conexão remota |
| host | Endereço IP ou nome de domínio do computador remoto |
| -p porta | Especifica a porta de conexão (padrão: 22) |
| -i arquivo | Especifica o arquivo de chave privada a ser usado na autenticação |
| -X | Habilita o encaminhamento de aplicações gráficas (X11) do host remoto |
| -v, --verbose | Exibe informações detalhadas sobre o processo de conexão (útil para depuração) |

> A conexão via `ssh` usa criptografia para proteger os dados transmitidos, sendo o método padrão para administração remota segura de servidores Linux. A autenticação pode ser feita por senha ou por par de chaves pública/privada (mais segura). Para gerar esse par de chaves, veja o comando `ssh-keygen`.

**Exemplos**

```bash
ssh usuario@192.168.1.10              # conecta ao host `192.168.1.10` como `usuario`
ssh usuario@servidor.com -p 2222      # conecta usando uma porta específica
ssh -i chave_privada.pem usuario@servidor.com  # conecta usando um arquivo de chave privada
ssh -X usuario@servidor.com           # conecta habilitando o encaminhamento de aplicações gráficas
```
