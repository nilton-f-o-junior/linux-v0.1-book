# ping

Testa a conectividade com outro host da rede, enviando pacotes e medindo o tempo de resposta.

```bash
ping [opções] host
```

| Argumento / Opção | Descrição |
|---|---|
| host | Endereço IP ou nome de domínio a ser testado |
| -c número | Define a quantidade de pacotes a serem enviados, encerrando automaticamente ao final |
| -i segundos | Define o intervalo entre o envio de cada pacote |
| -s tamanho | Define o tamanho (em bytes) dos pacotes enviados |
| -4 | Força o uso do protocolo IPv4 |
| -6 | Força o uso do protocolo IPv6 |

> Por padrão, `ping` envia pacotes continuamente até ser interrompido manualmente (`Ctrl + C`). Use `-c` para limitar a quantidade de pacotes enviados.

**Exemplos**

```bash
# envia pacotes continuamente para `google.com`
ping google.com
```

```bash
# envia 4 pacotes e encerra automaticamente
ping -c 4 google.com
```

```bash
# envia pacotes a cada 2 segundos
ping -i 2 google.com
```

```bash
# envia pacotes de 100 bytes
ping -s 100 google.com
```

```bash
# testa a conectividade com um endereço IP específico
ping -c 4 192.168.1.1
```
