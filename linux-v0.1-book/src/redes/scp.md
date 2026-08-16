# scp

Copia arquivos entre computadores de forma segura, através do protocolo SSH.

```bash
scp [opções] origem destino
```

| Argumento / Opção | Descrição |
|---|---|
| origem | Localização do arquivo a ser copiado (local ou remoto, no formato `usuário@host:caminho`) |
| destino | Localização para onde o arquivo será copiado (local ou remoto, no formato `usuário@host:caminho`) |
| -r, --recursive | Copia diretórios recursivamente, incluindo subpastas e arquivos |
| -P porta | Especifica a porta de conexão (padrão: 22) |
| -i arquivo | Especifica o arquivo de chave privada a ser usado na autenticação |
| -v, --verbose | Exibe informações detalhadas sobre o processo de cópia (útil para depuração) |

> `scp` usa a mesma autenticação e criptografia do `ssh`. É possível copiar de um computador local para um remoto, de um remoto para o local, ou até entre dois computadores remotos.

**Exemplos**

```bash
# copia um arquivo local para um servidor remoto
scp arquivo.txt usuario@servidor.com:/home/usuario/
```

```bash
# copia um arquivo remoto para o diretório atual
scp usuario@servidor.com:/home/usuario/arquivo.txt .
```

```bash
# copia um diretório inteiro para um servidor remoto
scp -r pasta/ usuario@servidor.com:/home/usuario/
```

```bash
# copia usando uma porta específica
scp -P 2222 arquivo.txt usuario@servidor.com:/home/usuario/
```

```bash
# copia usando uma chave privada
scp -i chave_privada.pem arquivo.txt usuario@servidor.com:/home/usuario/
```
