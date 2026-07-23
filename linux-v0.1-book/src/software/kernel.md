# Kernel

O kernel é a parte central do sistema operacional, carregada na memória assim que o computador liga e mantida em execução até o desligamento. Ele é o único software com acesso irrestrito ao hardware: processador, memória RAM, discos, placas de rede, periféricos e todos os programas que rodam no sistema.

Essa centralização não é acidental. Se cada programa pudesse acessar o hardware diretamente, dois programas poderiam tentar escrever no mesmo endereço de memória ao mesmo tempo, ou um programa mal escrito poderia travar a máquina inteira. O kernel existe para impedir exatamente isso: ele intermedeia o acesso, garante que cada programa opere isolado dos demais, e distribui os recursos físicos entre todos que precisam deles.

## Kernel space e user space

Todo sistema operacional moderno divide a execução em dois domínios com privilégios diferentes: o *kernel space* e o *user space*.

- **kernel space:** roda o próprio kernel, com acesso completo ao hardware e à memória do sistema. É onde vivem o escalonador de processos, o gerenciador de memória e os drivers.

- **user space:** rodam os programas comuns, sendo eles: navegadores, jogos, aplicativos no geral. Um programa em *user space* não pode acessar diretamente o disco, a rede ou a memória de outro processo.

## Tipos de kernel

Nem todo kernel organiza suas funções da mesma forma. A diferença está em quanto do sistema roda dentro do próprio kernel, com acesso total ao hardware, e quanto roda fora dele, isolado como qualquer outro programa.

### Monolítico

Praticamente tudo roda dentro do próprio kernel (*kernel space*).

- **Vantagem:** como tudo está no mesmo espaço de memória, a comunicação entre as partes é direta, sem a sobrecarga de trocar contexto entre domínios de privilégio, o que garante um desempenho muito rápido;

- **Desvantagem:** um erro em um driver mal escrito pode derrubar o sistema inteiro, já que ele roda com os mesmos privilégios do restante do kernel.

### Microkernel

No modelo microkernel, o kernel propriamente dito faz o mínimo possível: comunicação entre processos, escalonamento básico e gerenciamento de memória. Os demais serviços (como drivers e sistemas de arquivos) rodam no espaço do usuário (user space).

- **Vantagem:** se um driver falha, ele pode ser reiniciado sem derrubar o sistema, pois continua isolado do núcleo;

- **Desvantagem:** cada operação que exige comunicação entre componentes precisa passar pelo espaço do usuário e voltar, gerando uma troca constante de contexto que impacta o desempenho.

### Híbrido

O modelo híbrido tenta equilibrar os dois extremos. Ele mantém no kernel space os componentes mais sensíveis para garantir desempenho, mas isola em user space partes que se beneficiam de maior estabilidade e segurança (usado por sistemas como o Windows e o macOS).

- **Vantagem:** oferece um bom equilíbrio entre a velocidade do modelo monolítico e a segurança do microkernel, permitindo que o sistema seja flexível sem perder tanta performance;

- **Desvantagem:** a arquitetura é mais complexa de projetar e manter, e ainda pode cair por falhas em serviços críticos que continuam rodando no kernel space.

### Monolítico com módulos

O linux, segue o modelo monolítico, mas permite carregar e remover módulos dinamicamente sem reiniciar o sistema. Por exemplo, existe um módulo (`.ko`) e só é carregado quando o hardware correspondente é detectado. Isso soma parte da flexibilidade de um microkernel ao desempenho do modelo monolítico.

Para o usuário final, a escolha de qual sistema operacional usar raramente passa pela arquitetura do kernel em si. No entanto, entender essa estrutura explica boa parte das diferenças de comportamento entre os sistemas quando um driver falha ou quando o desempenho bruto é comparado.

## Funções principais do kernel

### Gerenciamento de processos

O kernel cria, agenda e encerra processos. Cada programa em execução é representado internamente como um processo, com sua própria região de memória, seus próprios arquivos abertos e seu próprio estado de execução. 

### Gerenciamento de memória

O kernel controla o acesso de cada processo à memória RAM, garantindo que um processo não leia ou escreva na área de memória de outro.

### Comunicação com hardware: drivers

Os drivers são o código que traduz comandos genéricos do kernel em instruções específicas que aquele hardware entende, e vice-versa.

### Sistema de arquivos

O kernel gerencia como dados são organizados e recuperados de dispositivos de armazenamento, abstraindo a complexidade física do disco em uma estrutura de arquivos e diretórios que os programas conseguem usar sem precisar saber onde, fisicamente, cada bit está gravado.

## Chamadas de sistema

Uma *syscall* funciona como a ponte de comunicação pela qual um programa em *user space* solicita um serviço ao kernel. Podemos citar: abrir um arquivo, alocar memória, enviar dados pela rede. Todas essas operações exigem uma *syscall*, porque nenhuma delas pode ser feita diretamente pelo programa sem acesso privilegiado ao hardware.

Quando um programa faz uma *syscall*, o processador realiza uma troca de contexto: sai do modo de privilégio restrito do *user space* e entra no modo privilegiado do kernel, executa a operação solicitada, e retorna o resultado ao programa, voltando ao modo restrito.

