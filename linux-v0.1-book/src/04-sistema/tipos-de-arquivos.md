# Tipos de arquivos

Se o sistema de arquivos é a malha organizacional instalada no armazenamento, os arquivos são a matéria-prima que preenche esse espaço. Para o disco rígido ou SSD, tudo não passa de uma longa sequência de bits — zeros e uns gravados magneticamente ou em chips de memória flash. A diferenciação entre o que é uma foto, um documento de texto ou um programa executável acontece na camada do sistema operacional, que precisa saber exatamente como decodificar cada uma dessas sequências.

## O que define um tipo de arquivo?

Um tipo de arquivo é determinado pela forma como seus dados internos são estruturados. Existem duas abordagens principais para o sistema operacional identificar essa estrutura:

- **Extensão de arquivo:** É o método padrão em sistemas Windows. O tipo do arquivo é indicado por um sufixo de três ou quatro letras após o ponto final no nome do arquivo (como `.docx`, `.jpg` ou `.mp4`). Se você alterar manualmente a extensão de um arquivo `.jpg` para `.txt`, o sistema tentará abri-lo em um editor de texto, resultando em uma tela cheia de caracteres ilegíveis.
  
- **Magic Numbers (Números Mágicos):** É a abordagem nativa de sistemas Unix e Linux. O sistema operacional ignora a extensão do nome e lê os primeiros bytes do arquivo (o cabeçalho ou *header*). Esses bytes iniciais contêm uma assinatura única. Por exemplo, todo arquivo PDF começa estritamente com os caracteres `%PDF`, e toda imagem PNG começa com os bytes hexadecimais `89 50 4E 47`. Mesmo sem extensão nenhuma no nome, o sistema sabe exatamente o que aquele arquivo é.

## Arquivos de texto plano (*Plain Text*)

São os arquivos mais simples e universais do ecossistema computacional. Eles contêm apenas caracteres numéricos e de texto puro, codificados em padrões como ASCII ou UTF-8, sem qualquer informação de formatação visual (como tamanho de fonte, cores ou margens).

- **`.txt`:** O formato básico de texto. É universalmente legível por qualquer dispositivo ou sistema operacional.
- **`.cfg`, `.ini`, `.conf`:** Arquivos de texto estruturados para guardar configurações de softwares e do próprio sistema operacional.
- **`.md` (Markdown):** Arquivos de texto que utilizam marcações simples (como asteriscos e hashes) para indicar títulos e negritos, mantendo o arquivo perfeitamente legível mesmo quando aberto em um editor de texto puro.

A grande vantagem do texto plano é a perenidade: um arquivo gerado hoje poderá ser lido daqui a cinquenta anos sem dependência de softwares proprietários.

## Arquivos binários

Ao contrário do texto plano, os arquivos binários não foram feitos para serem lidos diretamente por humanos. Eles exigem um software específico que entenda a sua geometria interna para traduzir os bits em algo compreensível na tela. Seus principais grupos são:

### Arquivos de imagem

Armazenam dados visuais, dividindo-se entre mapas de bits (pixels) e vetores.

- **`.jpg` / `.jpeg`:** Formato compactado com perda de qualidade. Ideal para fotografias na web devido ao tamanho reduzido do arquivo.
- **`.png`:** Compactação sem perda de dados. Suporta fundos transparentes, sendo o padrão para interfaces e gráficos de alta precisão.
- **`.svg`:** Formato vetorial baseado em XML. Em vez de salvar pixels, ele salva equações matemáticas de linhas e formas, permitindo que a imagem seja ampliada infinitamente sem perder a nitidez.

### Arquivos de áudio e vídeo

Funcionam frequentemente como contêineres que abrigam fluxos de dados codificados por algoritmos chamados codecs.

- **`.mp3`:** Áudio compactado com perda de frequências imperceptíveis ao ouvido humano médio. Tornou-se o padrão de distribuição musical digital.
- **`.wav`:** Áudio sem compactação. Mantém a fidelidade máxima da gravação original, resultando em arquivos massivos, usados profissionalmente na edição de som.
- **`.mp4` / `.mkv`:** Arquivos contêineres que guardam uma faixa de vídeo, múltiplas faixas de áudio (dublagens) e legendas em um único pacote sincronizado.

## Arquivos executáveis

São os arquivos que contêm instruções diretas para o processador executar tarefas. Eles mudam radicalmente conforme a arquitetura e o sistema operacional.

- **`.exe` e `.msi`:** Os formatos executáveis padrão do Windows. Contêm o código binário compilado e rotinas de instalação.
- **ELF (sem extensão nativa):** O padrão para executáveis em sistemas Linux. Possui uma estrutura rígida que indica ao kernel como carregar o programa na memória RAM.
- **Scripts (`.sh`, `.bat`, `.py`):** Diferente dos executáveis binários, os scripts são arquivos de texto puro contendo comandos ordenados. Eles não são lidos diretamente pelo processador, mas sim interpretados linha por linha por um programa intermediário (como o terminal Bash ou o interpretador Python).

## Arquivos de arquivamento e compactação

São formatos projetados para atuar como caixas digitais. Eles cumprem duas funções frequentemente confundidas: o arquivamento (juntar várias pastas e arquivos em um só local) e a compactação (reduzir o espaço em disco usando algoritmos matemáticos que eliminam redundâncias).

- **`.zip`:** O formato de compactação mais popular do mundo. Equilibra uma velocidade de compactação rápida com um nível de redução de tamanho aceitável.
- **`.tar`:** Muito comum no ecossistema Linux. Ele apenas realiza o arquivamento (junta os arquivos), sem aplicar nenhuma redução de tamanho.
- **`.tar.gz` ou `.tgz`:** É a união do utilitário `.tar` (que junta as pastas) com a compactação do algoritmo `Gzip` (que reduz o tamanho). É o padrão para distribuição de código-fonte e backups no mundo Unix.

## O impacto na segurança

A distinção entre tipos de arquivos é o primeiro pilar da segurança digital. Arquivos de dados puros (como `.txt`, `.jpg` ou `.mp3`) são passivos; eles são abertos por um programa e lidos, não tendo a capacidade de executar ações sozinhos no sistema.

O risco reside em arquivos ativos, ou seja, executáveis e scripts. Um arquivo nomeado falsamente como `foto.jpg.exe` pode enganar um usuário desatento em sistemas que ocultam extensões conhecidas. Ao clicar nele, o sistema operacional não abrirá uma imagem, mas sim executará as instruções binárias contidas ali, dando ao programa o poder de modificar arquivos na raiz do sistema, instalar malwares ou capturar dados do usuário.
