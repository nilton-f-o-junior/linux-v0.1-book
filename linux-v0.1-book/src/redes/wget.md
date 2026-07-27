# wget

Baixa arquivos da internet através de protocolos como HTTP, HTTPS e FTP.

```bash
wget [opções] url
```

| Argumento / Opção | Descrição |
|---|---|
| url | Endereço do arquivo a ser baixado |
| -O arquivo | Salva o conteúdo baixado com um nome específico, em vez do nome original |
| -c, --continue | Retoma o download de um arquivo parcialmente baixado |
| -b, --background | Executa o download em segundo plano |
| -r, --recursive | Baixa recursivamente o conteúdo de um site (útil para espelhar páginas) |
| -q, --quiet | Executa o download sem exibir mensagens no terminal |

> Diferente do `curl`, que por padrão exibe o conteúdo no terminal, `wget` já salva o resultado em um arquivo automaticamente, sendo focado principalmente em download de arquivos.

**Exemplos**

```bash
wget https://exemplo.com/arquivo.zip              # baixa o arquivo, mantendo o nome original
wget -O novo_nome.zip https://exemplo.com/arquivo.zip  # baixa o arquivo com um novo nome
wget -c https://exemplo.com/arquivo.zip           # retoma um download interrompido
wget -b https://exemplo.com/arquivo.zip           # baixa o arquivo em segundo plano
wget -r https://exemplo.com                       # baixa recursivamente o conteúdo de um site
```
