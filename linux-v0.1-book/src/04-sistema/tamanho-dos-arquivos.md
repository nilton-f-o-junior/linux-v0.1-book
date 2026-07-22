# O tamanho dos arquivos digitais

Se os tipos de arquivos determinam a forma dos dados e o sistema de arquivos organiza a sua localização na árvore de diretórios, o tamanho dos arquivos é a medida do seu "peso" no mundo digital. No universo físico, pesamos objetos em gramas ou medimos em metros; na computação, tudo se resume à quantidade de espaço que uma sequência de zeros e uns ocupa fisicamente em um dispositivo de armazenamento, seja ele um SSD, um HD ou uma fita magnética.

## A unidade fundamental: Bits e Bytes

No nível mais baixo da computação, a menor unidade de informação possível é o **bit** (acrônimo para *Binary Digit*). Um bit representa um estado elétrico ou magnético simples: ou ele está desligado (0) ou está ligado (1). Sozinho, um bit não consegue carregar muita informação, funcionando apenas como uma resposta de "sim" ou "não".

Para criar dados complexos, os computadores agrupam esses bits em conjuntos de 8. Esse grupo de 8 bits recebe o nome de **Byte**. 

- **1 Bit:** A menor unidade (0 ou 1).
- **1 Byte:** Um conjunto de 8 bits.

O Byte é considerado a unidade fundamental de armazenamento prático porque, historicamente, 1 Byte era o espaço exato necessário para armazenar um único caractere de texto (como a letra "A", o número "7" ou um ponto final) no padrão de codificação ASCII. Portanto, se você criar um arquivo de texto simples contendo apenas a palavra `computador`, esse arquivo terá exatamente 10 Bytes de tamanho.

## A escala de grandezas digitais

À medida que os arquivos incorporam elementos mais complexos do que texto puro — como imagens de alta resolução, áudios e vídeos em alta definição —, o número de Bytes necessários para contê-los cresce exponencialmente. Para evitar lidar com números astronômicos na casa dos bilhões ou trilhões, utilizamos prefixos multiplicadores padronizados:



- **Kilobyte (KB):** Tradicionalmente equivale a 1.000 Bytes. É o peso aproximado de uma página de texto digitada sem imagens.
- **Megabyte (MB):** Equivale a 1.000 Kilobytes (ou 1 milhão de Bytes). É a escala usada para músicas em MP3 (uma canção média tem de 4 a 8 MB) e fotos tiradas pelo celular (geralmente entre 2 e 1ú MB).
- **Gigabyte (GB):** Equivale a 1.000 Megabytes (ou 1 bilhão de Bytes). É a unidade de medida para filmes em alta definição, capacidade de memória RAM e instaladores de sistemas operacionais.
- **Terabyte (TB):** Equivale a 1.000 Gigabytes (ou 1 trilhão de Bytes). É a escala utilizada para medir a capacidade total de armazenamento de HDs externos e SSDs modernos voltados para o consumidor.
- **Petabyte (PB):** Equivale a 1.000 Terabytes. Uma escala gigantesca, utilizada por servidores de nuvem, data centers de empresas como Google e Netflix, e pesquisas científicas de grande porte.

## O mistério dos "Gigabytes desaparecidos": Decimal vs. Binário

Uma das maiores dúvidas no mundo da tecnologia ocorre quando alguém compra um HD ou SSD de "1 TB" e, ao conectá-lo ao computador, o sistema operacional exibe que o disco possui apenas cerca de **931 GB** de espaço disponível. Onde foram parar os quase 70 GB restantes?

Esse fenômeno não é um defeito, mas sim uma divergência matemática entre duas formas de contagem: a **decimal** (base 10) e a **binária** (base 2).

### A visão dos fabricantes (Sistema Decimal / SI)
Os fabricantes de hardware seguem o Sistema Internacional de Unidades (SI). Para eles, os prefixos funcionam estritamente em potências de 10, exatamente como no mundo físico (onde 1 quilômetro são 1.000 metros).
- $1\text{ KB} = 10^3 = 1.000\text{ Bytes}$
- $1\text{ MB} = 10^6 = 1.000.000\text{ Bytes}$
- $1\text{ GB} = 10^9 = 1.000.000.000\text{ Bytes}$
- $1\text{ TB} = 10^{12} = 1.000.000.000.000\text{ Bytes}$

### A visão do sistema operacional (Sistema Binário / IEC)
Os computadores pensam de forma binária. Para a arquitetura de processadores e memórias, trabalhar com potências de 2 é muito mais eficiente do que usar a base decimal. Por isso, historicamente, os sistemas operacionais adotaram o valor de $2^{10}$ ($1.024$) como multiplicador.
- $1\text{ KiB} = 2^{10} = 1.024\text{ Bytes}$
- $1\text{ MiB} = 2^{20} = 1.048.576\text{ Bytes}$
- $1\text{ GiB} = 2^{30} = 1.073.741.824\text{ Bytes}$

Para corrigir essa confusão, a IEC (*International Electrotechnical Commission*) criou os prefixos binários: **Kibibyte (KiB)**, **Mebibyte (MiB)** e **Gibibyte (GiB)**. 

Quando você compra um disco de 1.000.000.000.000 de Bytes (1 TB comercial), o sistema operacional divide esse valor por $1.073.741.824$ para descobrir o tamanho em GiB. O resultado matemático é exatamente **931,3 GiB**. O Windows, por uma questão de legado, faz essa conta binária mas continua exibindo a sigla "GB" na tela, gerando a falsa impressão de que há espaço faltando.

## Tamanho Real vs. Tamanho em Disco (*Size on Disk*)

Ao clicar com o botão direito sobre qualquer arquivo e acessar suas propriedades, você notará duas informações distintas: o **Tamanho** (Tamanho Real) e o **Tamanho em disco**. Quase sempre, o tamanho em disco é ligeiramente maior do que o tamanho real do arquivo.

Isso acontece devido à forma como os sistemas de arquivos (como NTFS no Windows, ou EXT4 no Linux) gerenciam o espaço físico do HD ou SSD. O sistema de arquivos não grava os dados bit a bit de forma contínua; ele divide o disco em pequenos blocos de tamanho fixo chamados **clusters** ou **unidades de alocação**. O padrão da indústria para a maioria dos sistemas é adotar clusters de **4 KB** (4.096 Bytes).

Cada cluster só pode conter dados de um único arquivo por vez. Portanto, se você criar um arquivo de texto que pesa apenas **100 Bytes** (Tamanho Real), o sistema operacional será obrigado a dedicar **1 cluster inteiro** para ele no disco. Consequentemente, o "Tamanho em disco" desse arquivo passará a ser de **4 KB**. O espaço restante daquele bloco (3.996 Bytes) é chamado de *Slack Space* (espaço frouxo) e fica inutilizado até que o arquivo cresça ou seja deletado.

Se você tiver uma pasta com 10.000 arquivos minúsculos de texto, a diferença entre o tamanho real somado e o tamanho que eles ocupam fisicamente no disco pode chegar a dezenas de Megabytes desperdiçados devido a essa fragmentação em blocos.

## O impacto prático do tamanho na computação

O tamanho de um arquivo dita o comportamento de toda a infraestrutura computacional ao seu redor:

- **Velocidade de carregamento:** Quando você abre um arquivo, o processador ordena que ele seja copiado do armazenamento local (SSD/HD) para a memória RAM. Um documento de 50 KB abre instantaneamente; um banco de dados de 50 GB pode levar minutos para ser carregado na memória, dependendo da velocidade de leitura do hardware.
- **Largura de banda na rede:** No tráfego de internet, o tamanho do arquivo determina o tempo de download e upload. Transmitir um arquivo de vídeo não compactado via rede consome muita banda, o que justifica a existência de algoritmos de compressão (como `.zip` ou formatos de streaming) para encolher o peso digital dos arquivos antes do envio.
- **Limitações arquitetônicas:** Sistemas de arquivos antigos possuem limites severos de tamanho. O antigo formato FAT32 (muito usado ainda em pendrives antigos) possui uma limitação matemática rígida: ele é incapaz de armazenar qualquer arquivo individual que seja maior do que **4 GB**, independentemente de o pendrive ter 64 GB de espaço total livre. Tentar copiar um arquivo de vídeo de 5 GB para um disco em FAT32 resultará em um erro de sistema instantâneo.
