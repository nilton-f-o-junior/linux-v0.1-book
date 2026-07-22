# Periféricos

Dispositivos que conectam o sistema ao usuário e ao ambiente ao redor, transformando ações físicas em dados e dados em saída perceptível.

## Dispositivos de entrada e saída

- **Dispositivo de entrada:** envia informação para dentro do computador, captura algo do mundo externo: um movimento, uma pressão, um som, uma imagem e converte esse estímulo em dados digitais que o sistema pode processar. O teclado é o exemplo mais direto, cada tecla pressionada gera um código que o sistema operacional interpreta como um caractere ou comando;

- **Dispositivo de saída:** faz o caminho inverso, recebe dados processados pelo computador e os converte em algo perceptível ao usuário ou ao ambiente. O monitor transforma sinais digitais em luz e as caixas de som convertem dados em ondas sonoras.

- **Dispositivos de entrada e saída (E/S):** alguns dispositivos operam nos dois sentidos simultaneamente. Uma tela sensível ao toque exibe imagens como dispositivo de saída e detecta toques como dispositivo de entrada.

## Dispositivos de entrada

### Teclado

O teclado é o periférico de entrada mais antigo ainda em uso universal. Cada tecla é um interruptor: ao ser pressionada, fecha um circuito e envia um código para o sistema operacional, que interpreta qual caractere foi digitado. 

No Linux, um dos primeiros passos de configuração é definir o mapa de layout correto do teclado. Os mais comuns no Brasil são o **ABNT2** (que possui a tecla Ç e o circunflexo junto ao número 1), o **Inglês Internacional (US)**, que exige combinações de teclas para gerar acentuações.

Dois tipos principais de construção dominam o mercado:

- **Membrana:** uma camada plástica flexível que comprime ao toque, são silenciosos e baratos;
- **Mecânico:** um switch independente sob cada tecla, com feedback tátil ou sonoro mais pronunciado.
- **Magnético:** sensores detectam a posição de um magneto na tecla sem contato elétrico direto.
- **Óptico:** a ativação é detectada por um feixe de luz interrompido, em vez de contato elétrico;
- **Capacitivo:** medem a mudança de capacitância ao toque, sem contato elétrico direto.

A conexão com o computador é feita por: USB, fio, radiofrequência e Bluetooth.

### Mouse

O mouse traduz movimento físico em movimento do cursor na tela. Um sensor ilumina a superfície abaixo e fotografa microscópicas variações a milhares de vezes por segundo, calculando a direção e a velocidade do deslocamento.

A precisão do sensor é medida em DPI (pontos por polegada): quanto maior o DPI, mais sensível o mouse ao menor movimento. A taxa de *polling* define quantas vezes por segundo o mouse reporta sua posição ao computador. Um mouse com taxa de 1.000 Hz atualiza a cada milissegundo.

### Outros dispositivos de entrada

- **Trackpad:** presente em todos os notebooks, reproduz as funções do mouse por meio de gestos com os dedos sobre uma superfície sensível ao toque;
- **Mesa digitalizadora:** substitui o mouse por uma caneta que detecta pressão e inclinação. Podem ser mesas tradicionais (onde você risca olhando para o monitor) ou displays interativos (telas de alta fidelidade feitas para desenhar diretamente sobre elas);
- **Microfone:** captura áudio analógico e o converte em sinal digital, classificando-se como dispositivo de entrada de áudio;
- **Controles de jogo:** periféricos especializados (joysticks, volantes) que enviam ao sistema os estados dos botões e eixos em tempo real.

No Linux, a maior parte desses dispositivos é reconhecida nativamente pelo próprio Kernel através de drivers de código aberto.

## Dispositivos de saída

### Monitor

O monitor é o dispositivo de saída visual principal, responsável por converter o sinal enviado pela placa de vídeo em imagem visível, geralmente através de interfaces como HDMI ou DisplayPort. Cada imagem é formada por milhões de pixels que combinados reproduzem uma ampla gama de cores. A qualidade dessa conversão define em grande parte a experiência visual do usuário com o sistema.

### Caixas de som e fones de ouvido

O computador processa áudio internamente como dados digitais. Para que esse áudio se torne som audível, é necessário um conversor digital-analógico (DAC) e, em seguida, um amplificador que envie o sinal aos alto-falantes ou fones.

Essa conversão acontece no hardware de áudio do sistema. Em placas-mãe comuns, esse circuito integrado atende ao uso cotidiano. Para obter maior fidelidade e potência sonora em equipamentos profissionais, utilizam-se interfaces de áudio ou DACs externos conectados via porta USB. Em sistemas Linux, servidores de som modernos como o **PipeWire** organizam e misturam esses fluxos de áudio de maneira eficiente e estável.

- **Caixas de som:** transformam o sinal elétrico em movimento de um cone, que comprime o ar e gera ondas sonoras;
- **Fones de ouvido:** funcionam pelo mesmo princípio em escala reduzida. Modelos com cancelamento ativo de ruído (ANC) adicionam um microfone voltado para o ambiente externo e geram ondas inversas que neutralizam o som ao redor antes que ele chegue aos ouvidos.

### Impressoras

A impressora recebe dados digitais e os transfers para um substrato físico, geralmente papel. Duas tecnologias dominam o mercado:

- **Jato de tinta (inkjet):** projeta gotículas microscópicas de tinta colorida sobre o papel. Custo de aquisição menor, mas custo por página mais alto pelo preço dos cartuchos;
- **Laser:** usa um feixe de laser para carregar eletrostaticamente um tambor, que atrai um pó fino chamado toner. O papel absorve o toner, fundido pelo calor. Mais rápida para volumes altos, com custo por página menor em uso intenso. i

No Linux, a comunicação com impressoras é largamente gerenciada pelo subsistema **CUPS** (*Common UNIX Printing System*).

## Armazenamento externo

Diferente dos dispositivos internos, fixados dentro do gabinete, o armazenamento externo conecta-se por interfaces como USB ou Thunderbolt e pode ser facilmente transportado entre máquinas. É uma categoria que une portabilidade e persistência. 

- **Pendrive:** a forma mais compacta e barata de armazenamento externo. Usa chips de memória flash e conecta-se por USB;
- **SSD externo:** segue o mesmo princípio do pendrive, mas em formato maior e com desempenho muito superior, alcançando velocidades altíssimas via USB 3.2 ou Thunderbolt;
- **HD externo:** usa o mesmo mecanismo magnético dos HDs internos. Oferece a maior capacidade por custo, mas possui fragilidade mecânica contra impactos;
- **Cartão de memória (SD / microSD):** armazenamento compacto usado em câmeras e dispositivos móveis. A velocidade é classificada por classes que indicam a taxa mínima garantida de escrita.
