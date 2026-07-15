# Kernel

Se o processador executa instruções e a memória guarda dados, o kernel é o que decide quem tem permissão para usar esses recursos, quando e em que medida. Ele não executa a lógica dos programas do usuário nem armazena um arquivo por conta própria. Ele arbitra. É a camada de software que fica entre o hardware bruto e tudo o mais que roda em um computador, o núcleo que transforma um conjunto de componentes eletrônicos em um sistema que pode executar múltiplos programas ao mesmo tempo, de forma segura e organizada.

## O que é o kernel?

O kernel é a parte central do sistema operacional, carregada na memória assim que o computador liga e mantida em execução até o desligamento. Ele é o único software com acesso irrestrito ao hardware: processador, memória RAM, discos, placas de rede, periféricos. Todo programa que roda no sistema — do navegador ao editor de texto — depende do kernel para fazer qualquer coisa que envolva hardware, desde ler um arquivo até desenhar um pixel na tela.

Essa centralização não é acidental. Se cada programa pudesse acessar o hardware diretamente, dois programas poderiam tentar escrever no mesmo endereço de memória ao mesmo tempo, ou um programa mal escrito poderia travar a máquina inteira. O kernel existe para impedir exatamente isso: ele intermedeia o acesso, garante que cada programa opere isolado dos demais, e distribui os recursos físicos entre todos que precisam deles.

## Kernel space e user space

Todo sistema operacional moderno divide a execução em dois domínios com privilégios diferentes: o *kernel space* e o *user space*.

No *kernel space* roda o próprio kernel, com acesso completo ao hardware e à memória do sistema. É onde vivem o escalonador de processos, o gerenciador de memória e os drivers. No *user space* rodam os programas comuns: navegadores, jogos, aplicativos de escritório. Um programa em *user space* não pode acessar diretamente o disco, a rede ou a memória de outro processo — ele precisa pedir ao kernel, por meio de uma *syscall*, que faça isso em seu nome.

Essa separação é imposta pelo próprio processador, que oferece níveis de privilégio distintos em hardware (os chamados *rings* de proteção, em arquiteturas x86). Um programa em *user space* simplesmente não tem instruções disponíveis para acessar certas regiões de memória ou certas portas de hardware. Só o kernel, rodando no nível mais privilegiado, tem essa permissão.

## Tipos de kernel

Nem todo kernel organiza suas funções da mesma forma. A diferença está em quanto do sistema roda dentro do próprio kernel, com acesso total ao hardware, e quanto roda fora dele, isolado como qualquer outro programa.

### Monolítico

No modelo monolítico, praticamente todo o sistema operacional — escalonador, gerenciador de memória, sistema de arquivos, drivers — roda dentro do kernel, em *kernel space*. É o modelo usado pelo Linux e, historicamente, pela maioria dos Unix. A vantagem é desempenho: como tudo está no mesmo espaço de memória, a comunicação entre as partes é direta, sem a sobrecarga de trocar de contexto entre domínios de privilégio. A desvantagem é que um erro em um driver mal escrito pode derrubar o sistema inteiro, já que ele roda com os mesmos privilégios do restante do kernel. Embora rígido, esse modelo foi evoluído em kernels modernos para permitir a inclusão de novos componentes sem a necessidade de recompilar todo o sistema.

### Microkernel

No modelo microkernel, o kernel propriamente dito faz o mínimo possível: comunicação entre processos, escalonamento básico e gerenciamento de memória. Drivers, sistemas de arquivos e outros serviços rodam em *user space*, como processos isolados. O QNX e o MINIX seguem essa filosofia. A vantagem é isolamento: se um driver falha, ele pode ser reiniciado sem derrubar o sistema. A desvantagem é desempenho — cada operação que envolveria uma chamada direta em um kernel monolítico agora exige comunicação entre processos, o que tem custo.

### Híbrido

O modelo híbrido tenta equilibrar os dois extremos. Mantém no *kernel space* os componentes mais sensíveis a desempenho, mas isola em *user space* partes que se beneficiam de maior segurança. O Windows NT e o macOS (baseado no XNU) seguem essa abordagem, cada um com seu próprio equilíbrio entre o que fica dentro e o que fica fora do núcleo.

Para o usuário final, a escolha de qual sistema operacional usar raramente passa pela arquitetura do kernel em si — mas ela explica boa parte das diferenças de comportamento entre sistemas quando um driver falha ou quando o desempenho bruto é comparado.

## Funções principais do kernel

O que um kernel faz, independentemente da arquitetura escolhida, se resume a um conjunto de responsabilidades que todo sistema operacional precisa cobrir.

### Gerenciamento de processos

O kernel cria, agenda e encerra processos. Cada programa em execução é representado internamente como um processo, com sua própria região de memória, seus próprios arquivos abertos e seu próprio estado de execução. Como o processador físico só executa uma instrução por núcleo por vez, é o kernel quem decide qual processo roda em qual instante — uma função chamada de escalonamento, tratada em mais detalhe adiante. Ao alternar entre esses processos em velocidades altíssimas, o kernel cria a ilusão de que múltiplos programas estão rodando simultaneamente.

### Gerenciamento de memória

O kernel controla o acesso de cada processo à memória RAM, garantindo que um processo não leia ou escreva na área de memória de outro. Ele faz isso por meio de memória virtual: cada processo enxerga um espaço de endereços próprio, que o kernel traduz para endereços físicos reais com a ajuda de um componente do processador chamado MMU (*Memory Management Unit*). Essa tradução também permite que o sistema use mais memória do que fisicamente existe, movendo partes menos usadas para o disco — a chamada memória de troca ou *swap*.

### Comunicação com hardware: drivers

Cada dispositivo de hardware — placa de vídeo, controlador de rede, SSD — tem particularidades próprias de fabricante e modelo. Os drivers são o código que traduz comandos genéricos do kernel em instruções específicas que aquele hardware entende, e vice-versa. Em kernels monolíticos, a maioria dos drivers roda dentro do próprio kernel; em microkernels, rodam isolados em *user space*.

### Sistema de arquivos

O kernel gerencia como dados são organizados e recuperados de dispositivos de armazenamento, abstraindo a complexidade física do disco em uma estrutura de arquivos e diretórios que os programas conseguem usar sem precisar saber onde, fisicamente, cada bit está gravado.

## Chamadas de sistema (syscalls)

Uma *syscall* funciona como a ponte de comunicação pelo qual um programa em *user space* solicita um serviço ao kernel. Abrir um arquivo, alocar memória, enviar dados pela rede — todas essas operações exigem uma *syscall*, porque nenhuma delas pode ser feita diretamente pelo programa sem acesso privilegiado ao hardware.

Quando um programa faz uma *syscall*, o processador realiza uma troca de contexto: sai do modo de privilégio restrito do *user space* e entra no modo privilegiado do kernel, executa a operação solicitada, e retorna o resultado ao programa, voltando ao modo restrito. Essa troca tem um custo de desempenho pequeno, mas não nulo — por isso programas que fazem uso intensivo de I/O costumam agrupar operações para reduzir o número de *syscalls* necessárias.

## O kernel Linux

Criado por Linus Torvalds em 1991, o Linux é o kernel monolítico mais usado do mundo, presente em servidores, Android, supercomputadores e parte dos desktops.

### Monolítico com módulos

Segue o modelo monolítico, mas permite carregar e remover módulos dinamicamente sem reiniciar o sistema — um driver de rede, por exemplo, existe como módulo (`.ko`) e só é carregado quando o hardware correspondente é detectado. Isso soma parte da flexibilidade de um microkernel ao desempenho do modelo monolítico.

### Kernel não é distribuição

O kernel é só o núcleo: escalonador, memória, drivers, sistema de arquivos. Interface gráfica, gerenciador de pacotes e demais utilitários vêm de fora dele, empacotados por distribuições como Ubuntu, Fedora ou Arch — que, apesar das diferenças entre si, rodam essencialmente o mesmo kernel.
