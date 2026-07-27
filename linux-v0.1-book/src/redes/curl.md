# curl

Transfere dados de ou para um servidor, utilizando diversos protocolos (HTTP, HTTPS, FTP, entre outros).

```bash
curl [opções] url
```

| Argumento / Opção | Descrição |
|---|---|
| url | Endereço do recurso a ser acessado |
| -o arquivo | Salva o conteúdo baixado em um arquivo com o nome especificado |
| -O | Salva o conteúdo baixado usando o mesmo nome do arquivo remoto |
| -I, --head | Exibe apenas os cabeçalhos da resposta, sem baixar o conteúdo |
| -X método | Especifica o método HTTP a ser usado (ex.: `GET`, `POST`, `PUT`, `DELETE`) |
| -d dados | Envia dados no corpo da requisição (geralmente usado com `POST`) |
| -L, --location | Segue redirecionamentos automaticamente |

> Por padrão, `curl` exibe o conteúdo da resposta diretamente no terminal, sem salvá-lo em um arquivo. Use `-o` ou `-O` para baixar e salvar o conteúdo.

**Exemplos**

```bash
curl https://exemplo.com                          # exibe o conteúdo da página no terminal
curl -O https://exemplo.com/arquivo.zip           # baixa o arquivo, mantendo o nome original
curl -o meu_arquivo.zip https://exemplo.com/arquivo.zip  # baixa o arquivo com um novo nome
curl -I https://exemplo.com                       # exibe apenas os cabeçalhos da resposta
curl -X POST -d "nome=teste" https://exemplo.com/api     # envia dados via método POST
curl -L https://exemplo.com                       # segue redirecionamentos automaticamente
```
