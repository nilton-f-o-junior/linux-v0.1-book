# O tamanho dos arquivos digitais

No nível mais baixo da computação, a menor unidade de informação possível é o **bit** (acrônimo para *Binary Digit*). Um bit representa um estado elétrico ou magnético simples: ou ele está desligado (0) ou está ligado (1). Sozinho, um bit não consegue carregar muita informação, funcionando apenas como uma resposta de “sim” ou “não”.

Para criar dados complexos, os computadores agrupam esses bits em conjuntos de 8. Esse grupo de 8 bits recebe o nome de **Byte**.

- **1 Bit:** a menor unidade (0 ou 1);

- **1 Byte:** um conjunto de 8 bits.

## A escala de grandezas digitais

À medida que os arquivos incorporam elementos mais complexos do que texto puro, o número de bytes necessários para contê-los cresce exponencialmente. Para evitar lidar com números astronômicos na casa dos bilhões ou trilhões, utilizamos prefixos multiplicadores padronizados:

- **Kilobyte (KB):** tradicionalmente equivale a 1.000 Bytes;

- **Megabyte (MB):** equivale a 1.000 Kilobytes (ou 1 milhão de bytes);

- **Gigabyte (GB):** equivale a 1.000 Megabytes (ou 1 bilhão de bytes);

- **Terabyte (TB):** equivale a 1.000 Gigabytes (ou 1 trilhão de bytes);

- **Petabyte (PB):** equivale a 1.000 Terabytes.

## Tamanho Real vs. Tamanho em Disco

Ao clicar com o botão direito sobre qualquer arquivo e acessar suas propriedades, você notará duas informações distintas: o **Tamanho** (Tamanho Real) e o **Tamanho em disco**. Quase sempre, o tamanho em disco é ligeiramente maior do que o tamanho real do arquivo.

Isso acontece devido à forma como os sistemas de arquivos (como NTFS no Windows, ou EXT4 no Linux) gerenciam o espaço físico do HD ou SSD. O sistema de arquivos não grava os dados bit a bit de forma contínua; ele divide o disco em pequenos blocos de tamanho fixo chamados **clusters** ou **unidades de alocação**. O padrão da indústria para a maioria dos sistemas é adotar clusters de **4 KB** (4.096 Bytes).

Cada cluster só pode conter dados de um único arquivo por vez. Portanto, se você criar um arquivo de texto que pesa apenas **100 Bytes** (Tamanho Real), o sistema operacional será obrigado a dedicar **1 cluster inteiro** para ele no disco. Consequentemente, o “Tamanho em disco” desse arquivo passará a ser de **4 KB**. O espaço restante daquele bloco (3.996 Bytes) é chamado de *Slack Space* e fica inutilizado até que o arquivo cresça ou seja deletado.

## O impacto prático do tamanho na computação

O tamanho de um arquivo dita o comportamento de toda a infraestrutura computacional ao seu redor:


**Velocidade de carregamento:** quando você abre um arquivo, o processador ordena que ele seja copiado do armazenamento local (SSD/HD) para a memória RAM. Um documento de 50 KB abre instantaneamente; um banco de dados de 50 GB pode levar minutos para ser carregado na memória, dependendo da velocidade de leitura do hardware;


**Largura de banda na rede:** no tráfego de internet, o tamanho do arquivo determina o tempo de download e upload. Transmitir um arquivo de vídeo não compactado via rede consome muita banda, o que justifica a existência de algoritmos de compressão (como `.zip` ou formatos de streaming) para encolher o peso digital dos arquivos antes do envio;


**Limitações arquitetônicas:** sistemas de arquivos antigos possuem limites severos de tamanho. O antigo formato FAT32 (muito usado ainda em pendrives antigos) possui uma limitação matemática rígida: ele é incapaz de armazenar qualquer arquivo individual que seja maior do que **4 GB**, independentemente de o pendrive ter 64 GB de espaço total livre. Tentar copiar um arquivo de vídeo de 5 GB para um disco em FAT32 resultará em um erro de sistema instantâneo.
