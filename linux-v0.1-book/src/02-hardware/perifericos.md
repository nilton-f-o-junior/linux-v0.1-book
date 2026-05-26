# Periféricos

O computador, por si só, é um sistema fechado. Processa, armazena, calcula — mas não recebe instruções do mundo exterior nem comunica resultados de volta sem intermediários. Os periféricos são esses intermediários: dispositivos que conectam o sistema ao usuário e ao ambiente ao redor, transformando ações físicas em dados e dados em saída perceptível.

## Dispositivos de entrada e saída

Antes de falar sobre periféricos específicos, vale entender a distinção fundamental que os organiza: a diferença entre entrada e saída.

- **Dispositivo de entrada:** envia informação para dentro do computador. Captura algo do mundo externo — um movimento, uma pressão, um som, uma imagem — e converte esse estímulo em dados digitais que o sistema pode processar. O teclado é o exemplo mais direto: cada tecla pressionada gera um código que o sistema operacional interpreta como um caractere ou comando.
- **Dispositivo de saída:** faz o caminho inverso — recebe dados processados pelo computador e os converte em algo perceptível ao usuário ou ao ambiente. O monitor transforma sinais digitais em luz; as caixas de som convertem dados em ondas sonoras; a impressora transfere informação para o papel. Em todos os casos, a direção é a mesma: do sistema para o mundo.

Essa distinção, embora simples, nem sempre é absoluta. Alguns dispositivos operam nos dois sentidos simultaneamente. Uma tela sensível ao toque exibe imagens como dispositivo de saída e detecta toques como dispositivo de entrada. Um headset com microfone reproduz áudio e captura voz ao mesmo tempo. Nesses casos, fala-se em dispositivos de entrada e saída, ou simplesmente dispositivos de E/S.

O canal que conecta esses dispositivos ao computador também faz parte da equação. O sistema operacional detecta cada periférico conectado, carrega o driver correspondente — um software que traduz os comandos genéricos do sistema para as instruções específicas do dispositivo — e o disponibiliza para uso. A maioria dos periféricos modernos usa USB como interface, um padrão criado exatamente para unificar e simplificar essas conexões. Periféricos sem fio usam Bluetooth ou um receptor USB dedicado com radiofrequência proprietária.

## Dispositivos de entrada

### Teclado

O teclado é o periférico de entrada mais antigo ainda em uso universal. Cada tecla é um interruptor: ao ser pressionada, fecha um circuito e envia um código para o sistema operacional, que interpreta qual caractere foi digitado.

O mecanismo interno do interruptor define a experiência de digitação. Dois tipos principais dominam o mercado:

- **Membrana:** uma camada plástica flexível que comprime ao toque. São silenciosos, baratos e presentes na maioria dos teclados de escritório.
- **Mecânico:** um switch independente sob cada tecla, com feedback tátil ou sonoro mais pronunciado. Dentro dessa categoria, os switches variam conforme o comportamento:
  - **Linear:** resistência uniforme ao longo de todo o percurso, sem ponto de clique. Preferido por quem digita rápido ou joga.
  - **Tátil:** oferece um ponto de resistência no meio do percurso, sem som audível. Equilibra feedback físico e silêncio.
  - **Clicky:** adiciona um clique audível no ponto de atuação. Popular entre quem prefere confirmação sonora ao digitar.

A conexão com o computador é feita por USB com fio ou por rádio frequência e Bluetooth em modelos sem fio. Modelos sem fio eliminam o cabo mas introduzem latência mínima e dependência de bateria — irrelevante para digitação comum, percebida por jogadores competitivos em situações de reação extrema.

### Mouse

O mouse traduz movimento físico em movimento do cursor na tela. Nos modelos ópticos modernos — padrão hoje — um sensor ilumina a superfície abaixo e fotografa microscópicas variações a milhares de vezes por segundo, calculando a direção e a velocidade do deslocamento.

A precisão do sensor é medida em DPI (dots per inch, pontos por polegada): quanto maior o DPI, mais sensível o mouse ao menor movimento. Usuários de monitores de alta resolução ou com áreas de trabalho grandes tendem a usar DPI mais alto; jogadores de precisão frequentemente preferem valores mais baixos com movimentos amplos de braço.

Além do DPI, a taxa de polling define quantas vezes por segundo o mouse reporta sua posição ao computador. Um mouse com taxa de 1.000 Hz atualiza a cada milissegundo; valores mais altos, como 4.000 ou 8.000 Hz, existem em modelos voltados a jogos competitivos e reduzem a latência percebida.

### Outros dispositivos de entrada

- **Trackpad:** presente em todos os notebooks, reproduz as funções do mouse por meio de gestos com os dedos sobre uma superfície sensível ao toque. Nos modelos modernos, gestos com dois, três ou quatro dedos executam ações como rolar a página, alternar entre janelas ou invocar controles do sistema.
- **Mesa digitalizadora:** substitui o mouse por uma caneta que detecta pressão e inclinação sobre uma superfície plana. É o padrão em ilustração digital, retoque fotográfico e design — o controle por caneta permite variações de espessura e opacidade que nenhum mouse replica.
- **Microfone:** captura áudio analógico e o converte em sinal digital, classificando-se como dispositivo de entrada de áudio.
- **Controles de jogo, joysticks, volantes e pedais:** periféricos especializados que reproduzem a interface física de consoles ou veículos, enviando ao sistema os estados dos botões e eixos em tempo real.

## Dispositivos de saída

### Monitor

O monitor é o dispositivo de saída visual principal, responsável por converter o sinal enviado pela placa de vídeo em imagem visível. Cada imagem é formada por milhões de pixels — pontos de luz compostos por três subpixels nas cores vermelho, verde e azul — que combinados reproduzem uma ampla gama de cores. A qualidade dessa conversão, em termos de resolução, fidelidade de cor, taxa de atualização e tempo de resposta, define em grande parte a experiência visual do usuário com o sistema.

### Caixas de som e fones de ouvido

O computador processa áudio internamente como dados digitais — amostras numéricas que representam variações de pressão sonora ao longo do tempo. Para que esse áudio se torne som audível, é necessário um conversor digital-analógico (DAC) e, em seguida, um amplificador que envie o sinal aos alto-falantes ou fones.

Essa conversão acontece no hardware de áudio do sistema. Em placas-mãe comuns, esse circuito está integrado ao chipset — funcional para uso cotidiano, mas com limitações em qualidade de sinal, especialmente para fones de ouvido de alta impedância. Placas de som dedicadas, instaladas em slot PCIe ou conectadas por USB, oferecem conversores de maior qualidade, menor ruído e amplificadores mais potentes.

- **Caixas de som:** transformam o sinal elétrico em movimento de um cone, que comprime o ar e gera ondas sonoras. Podem ser simples estéreos de mesa ou sistemas multicanal com subwoofer para reprodução de áudio posicional.
- **Fones de ouvido:** funcionam pelo mesmo princípio em escala reduzida, com drivers próximos aos ouvidos. Modelos com cancelamento ativo de ruído (ANC) adicionam um microfone voltado para o ambiente externo e geram ondas inversas que neutralizam o som ao redor antes que ele chegue aos ouvidos — útil em ambientes barulhentos como aviões ou escritórios abertos.

### Impressoras

A impressora recebe dados digitais e os transfere para um substrato físico, geralmente papel. Duas tecnologias dominam o mercado de uso pessoal e corporativo.

- **Jato de tinta (inkjet):** projeta gotículas microscópicas de tinta colorida sobre o papel, formando a imagem ponto a ponto. Versátil e capaz de imprimir com alta fidelidade de cor em papel fotográfico. Custo de aquisição menor, mas custo por página mais alto pelo preço dos cartuchos.
- **Laser:** usa um feixe de laser para carregar eletrostaticamente um tambor, que atrai um pó fino chamado toner. O papel absorve o toner, fundido pelo calor. Mais rápida para volumes altos, com custo por página menor em uso intenso, e o resultado é mais duradouro — a impressão não borra com umidade.

---

## Armazenamento externo

Ao contrário dos dispositivos de armazenamento internos, fixados dentro do gabinete e acessados diretamente pela placa-mãe, o armazenamento externo conecta-se por interfaces como USB ou Thunderbolt e pode ser facilmente transportado entre máquinas. É uma categoria que une portabilidade e persistência: os dados sobrevivem sem energia, assim como em qualquer outro dispositivo de armazenamento não volátil, e podem ser levados de um computador a outro sem nenhuma configuração adicional.

- **Pendrive:** a forma mais compacta e barata de armazenamento externo. Usa chips de memória flash e conecta-se por USB. Capacidades variam de poucos gigabytes até alguns terabytes nos modelos mais recentes. A velocidade depende da geração do conector: um pendrive USB 3.2 transfere dados significativamente mais rápido que um modelo USB 2.0 de aparência similar.
- **SSD externo:** segue o mesmo princípio do pendrive, mas em formato maior e com desempenho superior. Modelos conectados por USB 3.2 ou Thunderbolt atingem velocidades comparáveis às dos SSDs internos SATA, sendo práticos para edição de vídeo diretamente do disco externo ou backups rápidos de grandes volumes. Alguns modelos NVMe em gabinetes Thunderbolt chegam próximos ao desempenho de SSDs internos de alto desempenho.
- **HD externo:** usa o mesmo mecanismo magnético dos HDs internos — pratos girando e braço de leitura — em uma carcaça portátil. Oferece a maior capacidade por custo entre todas as opções externas, sendo a escolha prática para backups volumosos de fotos, vídeos e coleções de mídia. A limitação é a fragilidade mecânica: impactos físicos durante a operação podem danificar o mecanismo interno.
- **Cartão de memória (SD / microSD):** armazenamento compacto usado em câmeras, drones, consoles portáteis e dispositivos móveis. Lido no computador por leitor integrado ou adaptador USB. A velocidade é classificada por classes (Class 10, UHS-I, UHS-II, V30, V60, V90), que indicam a taxa mínima garantida de escrita — relevante para gravação de vídeo em alta resolução sem interrupções.
