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
cd /etc                      # navega até o diretório /etc
cd                           # volta para o diretório pessoal (home)
cd ~                         # também volta para o diretório pessoal (home)
cd ..                        # sobe um nível (diretório pai)
cd -                         # volta para o diretório anterior
cd ~/Documentos              # navega até a pasta "Documentos" dentro do home
```
