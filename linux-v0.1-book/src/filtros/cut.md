# cut

Extrai seções (colunas ou intervalos de caracteres) de cada linha de um arquivo.

```bash
cut [opções] [arquivo]
```

| Argumento / Opção | Descrição |
|---|---|
| arquivo | Localização do arquivo a ser processado |
| -f, --fields=lista | Seleciona os campos (colunas) informados |
| -d, --delimiter=caractere | Define o caractere delimitador entre os campos (padrão: `tab`) |
| -c, --characters=lista | Seleciona os caracteres informados em cada linha, por posição |
| --complement | Inverte a seleção, exibindo tudo exceto os campos/caracteres informados |

> Por padrão, `cut` usa o caractere `tab` como delimitador entre os campos. Para arquivos separados por vírgula (CSV), use `-d ','`.

**Exemplos**

```bash
cut -f 1 dados.tsv                    # exibe apenas o primeiro campo de cada linha
cut -d ',' -f 2 dados.csv             # exibe o segundo campo, usando vírgula como delimitador
cut -d ',' -f 1,3 dados.csv           # exibe o primeiro e o terceiro campos
cut -c 1-5 arquivo.txt                # exibe os 5 primeiros caracteres de cada linha
cut -d ':' -f 1 /etc/passwd           # exibe apenas os nomes de usuário do arquivo `passwd`
```
