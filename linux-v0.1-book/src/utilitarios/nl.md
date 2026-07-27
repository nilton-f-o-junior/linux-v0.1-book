# nl

Numera as linhas de um arquivo de texto e exibe o resultado na saída padrão.

```bash
nl [opções] [arquivo]
```

| Argumento / Opção | Descrição |
|---|---|
| arquivo | Localização do arquivo a ser numerado |
| -b a | Numera todas as linhas, inclusive as em branco |
| -b t | Numera apenas as linhas com conteúdo (padrão) |
| -n ln | Alinha a numeração à esquerda |
| -n rn | Alinha a numeração à direita (padrão) |
| -w N | Define a largura, em colunas, reservada para o número da linha |
| -s "separador" | Define o texto usado para separar o número do conteúdo da linha |

> Por padrão, `nl` não numera linhas em branco; use `-b a` caso queira incluí-las na contagem.
> Diferente de `cat -n`, que numera todas as linhas indiscriminadamente, `nl` oferece mais controle sobre quais linhas recebem numeração e como ela é formatada.

**Exemplos**

```bash
nl arquivo.txt                     # numera as linhas com conteúdo de `arquivo.txt`
nl -ba arquivo.txt                  # numera todas as linhas, inclusive as em branco
nl -nln arquivo.txt                 # exibe a numeração alinhada à esquerda
nl -w 5 arquivo.txt                  # reserva 5 colunas para o número da linha
nl -s ") " arquivo.txt               # separa o número do conteúdo com ") "
cat arquivo.txt | nl                 # numera a saída do comando `cat`
```
