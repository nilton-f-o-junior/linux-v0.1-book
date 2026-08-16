# du

Exibe o espaço em disco utilizado por arquivos e diretórios.

```bash
du [opções] [diretório/arquivo]
```

| Argumento / Opção | Descrição |
|---|---|
| diretório/arquivo | Localização a ser analisada (padrão: diretório atual) |
| -h | Exibe os tamanhos em formato legível (KB, MB, GB) |
| -s | Exibe apenas o total geral, sem detalhar subdiretórios |
| -a | Exibe o tamanho de todos os arquivos, não apenas dos diretórios |
| -c | Exibe uma linha adicional com o total geral |
| --max-depth=N | Limita a profundidade de exibição a `N` níveis de subdiretórios |

> Por padrão, `du` percorre recursivamente todos os subdiretórios, o que pode gerar uma saída bem extensa; combine com `-s` ou `--max-depth` para resumir o resultado.
> Para verificar o espaço total disponível no sistema de arquivos (em vez do espaço ocupado por arquivos específicos), utilize `df`.

**Exemplos**

```bash
# exibe o uso de espaço do diretório atual e seus subdiretórios
du
```

```bash
# exibe os tamanhos em formato legível
du -h
```

```bash
# exibe apenas o total do diretório /home, de forma legível
du -sh /home
```

```bash
# exibe o tamanho de cada arquivo dentro de /var/log
du -ah /var/log
```

```bash
# exibe o uso de espaço limitado a um nível de subdiretórios
du -h --max-depth=1
```

```bash
# exibe o tamanho de cada arquivo .log e o total geral
du -ch *.log
```
