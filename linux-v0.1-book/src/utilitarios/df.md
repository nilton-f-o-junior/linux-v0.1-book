# df

Exibe o espaço de disco utilizado e disponível nos sistemas de arquivos montados.

```bash
df [opções] [diretório/arquivo]
```

| Argumento / Opção | Descrição |
|---|---|
| diretório/arquivo | Exibe informações apenas do sistema de arquivos que contém esse diretório/arquivo |
| -h | Exibe os tamanhos em formato legível (KB, MB, GB) |
| -T | Exibe também o tipo de sistema de arquivos |
| -i | Exibe informações de inodes em vez de blocos |
| -a | Inclui sistemas de arquivos pseudo (com tamanho zero, como `/proc`) |
| --total | Exibe uma linha adicional com o total geral |

> Por padrão, os tamanhos são exibidos em blocos de 1K, o que dificulta a leitura; use `-h` para um formato mais amigável.
> Para verificar o espaço ocupado por diretórios específicos (em vez do sistema de arquivos como um todo), utilize `du`.

**Exemplos**

```bash
# exibe o uso de todos os sistemas de arquivos montados
df
```

```bash
# exibe os tamanhos em formato legível
df -h
```

```bash
# exibe o uso do sistema de arquivos que contém /home
df -h /home
```

```bash
# exibe também o tipo de cada sistema de arquivos
df -T
```

```bash
# exibe a quantidade de inodes usados e disponíveis
df -i
```

```bash
# exibe o uso de todos os sistemas de arquivos e o total geral
df -h --total
```
