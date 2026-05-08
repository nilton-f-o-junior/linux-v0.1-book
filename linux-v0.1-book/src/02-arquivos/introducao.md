# Arquivos

Um conceito fundamental do Linux é que "tudo é um arquivo". Isso significa que não apenas documentos, mas também diretórios, dispositivos de hardware e processos são tratados como arquivos pelo sistema. Entre os tipos mais comuns, temos os arquivos regulares (como textos e executáveis), os diretórios (que organizam outros arquivos) e os links simbólicos (atalhos para outros arquivos).

```bash
# arquivo
texto.txt

# diretório
home/
```

No Linux, os arquivos são `case sensitive`, o que significa que o sistema diferencia letras maiúsculas de minúsculas. Caso você crie arquivos com o mesmo nome, variando entre letras maiúsculas e minúsculas, o sistema os tratará como arquivos diferentes.

```bash
texto.txt
TEXTO.txt
```

Ao criar arquivos com mesmo nome e formatos diferentes, o sistema trata como arquivos diferentes.

```bash
texto.txt
texto.md
```

Ao criar um arquivo e adicionar um `.` antes do nome, ele será considerado um arquivo oculto e não será listado junto com os outros.

```bash
.texto.txt
.texto.sh
```
