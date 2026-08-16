# cd

Muda o diretório de trabalho atual do shell.

```bash
cd [diretório]
```

| Argumento / Opção | Descrição |
|---|---|
| diretório | Caminho do diretório para o qual deseja navegar |
| (sem argumento) | Retorna ao diretório pessoal (home) do usuário |
| - | Retorna ao diretório anterior (último em que se esteve) |
| .. | Sobe um nível, indo para o diretório pai |
| ~ | Referencia o diretório pessoal (home) do usuário |

> `cd` é um comando interno do shell (não um programa externo), por isso ele não aparece como um executável separado no sistema de arquivos.

**Exemplos**

```bash
# navega até o diretório /etc
cd /etc
```

```bash
# volta para o diretório pessoal (home)
cd
```

```bash
# também volta para o diretório pessoal (home)
cd ~
```

```bash
# sobe um nível (diretório pai)
cd ..
```

```bash
# volta para o diretório anterior
cd -
```

```bash
# navega até a pasta "Documentos" dentro do home
cd ~/Documentos
```
