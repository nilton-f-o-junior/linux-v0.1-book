# man

Exibe o manual (documentação) de um comando ou programa.

```bash
man [opções] comando
```

| Argumento / Opção | Descrição |
|---|---|
| comando | Nome do comando ou programa cujo manual será exibido |
| -k palavra-chave | Busca comandos cujo manual contenha a palavra-chave informada |
| -f comando | Exibe uma breve descrição do comando |
| seção | Número da seção do manual a ser consultada (ex.: `1` para comandos de usuário, `5` para arquivos de configuração) |

> Durante a leitura: `espaço` avança uma página, `Enter` avança uma linha, `q` encerra, `/palavra` pesquisa dentro do texto.

**Exemplos**

```bash
# exibe o manual do comando `ls`
man ls
```

```bash
# exibe o manual da seção 5 (arquivos) para `passwd`
man 5 passwd
```

```bash
# busca comandos relacionados à palavra `rede`
man -k rede
```

```bash
# exibe uma breve descrição do comando `cat`
man -f cat
```

```bash
# exibe o manual do próprio comando `man`
man man
```
