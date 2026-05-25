# Fonte de Alimentação

Cada componente dentro do computador precisa de energia elétrica para funcionar. O processador, a memória RAM, o armazenamento e os dispositivos conectados dependem de tensões específicas, estáveis e contínuas. A fonte de alimentação é o componente responsável por pegar a corrente da tomada e transformá-la em algo que o hardware entende.

## O que ela faz

A tomada elétrica fornece corrente alternada (CA), o tipo de energia que oscila de direção dezenas de vezes por segundo e que chega às casas em tensões de 110 V ou 220 V conforme a região. O hardware do computador, porém, opera com corrente contínua (CC), em tensões muito mais baixas: 3,3 V, 5 V e 12 V, dependendo do componente.

A fonte converte um tipo no outro. Ela retifica a corrente alternada, regula a tensão de saída para os valores esperados e distribui energia pelos cabos que alimentam a placa-mãe, o processador, os discos e a placa de vídeo.

## Eficiência e o selo 80 Plus

Nenhuma conversão de energia é perfeita. Parte da eletricidade consumida da tomada se perde como calor durante o processo. A eficiência de uma fonte indica quanto dessa energia é efetivamente convertida em energia útil para os componentes.

Uma fonte com 80% de eficiência, por exemplo, transforma 80 watts em energia utilizável para cada 100 watts consumidos da tomada. Os 20 watts restantes viram calor, dissipado pelo ventilador interno da fonte.

O programa de certificação 80 Plus classifica as fontes por faixa de eficiência em diferentes níveis: White, Bronze, Silver, Gold, Platinum e Titanium. Uma fonte 80 Plus Gold atinge no mínimo 87% de eficiência na maior parte da sua faixa de operação. Além de economizar energia, fontes mais eficientes geram menos calor e tendem a durar mais.

## Potência: quanto é suficiente?

A potência de uma fonte é medida em watts e indica o máximo de energia que ela pode fornecer continuamente ao sistema. Escolher uma fonte subdimensionada resulta em instabilidade, travamentos ou danos ao hardware. Superdimensionar demais desperdiça dinheiro, embora uma fonte ociosa seja perfeitamente segura.

Alguns parâmetros práticos:

- **300 a 450 W** cobre computadores simples sem placa de vídeo dedicada, como os usados para tarefas de escritório e navegação.
- **550 a 750 W** é o intervalo adequado para sistemas com placa de vídeo intermediária e uso geral.
- **850 W ou mais** é o território de placas de vídeo de alto desempenho, múltiplos discos e sistemas voltados a jogos ou workstations.

O consumo real do sistema raramente atinge o pico teórico. Uma fonte de 650 W operando um sistema que consome 400 W sob carga plena funciona dentro da sua faixa de maior eficiência, que é, na prática, o cenário ideal.

## Modular, semi-modular e não modular

Os cabos que saem da fonte precisam chegar a cada componente do gabinete. Em fontes não modulares, todos os cabos são fixos: saem da fonte e ficam lá, sejam usados ou não. Cabos sobrando dentro do gabinete atrapalham o fluxo de ar e dificultam a organização.

Fontes modulares resolvem isso: todos os cabos são destacáveis, conectados apenas quando necessários. Fontes semi-modulares adotam um meio-termo, com os cabos essenciais (como o da placa-mãe) fixos e os demais opcionais.

A modularidade não afeta o desempenho, mas facilita a montagem e contribui para um gabinete mais organizado.

## Seletor de voltagem

Algumas fontes possuem na parte traseira uma pequena chave com as opções 110 V e 220 V. Esse seletor indica a tensão da rede elétrica à qual a fonte será conectada, e deve ser ajustado conforme a tensão disponível na tomada da região.

Ligar a fonte com o seletor na posição errada é um erro grave. Uma fonte configurada para 220 V em uma tomada de 110 V simplesmente não liga. O caminho inverso é mais perigoso: uma fonte ajustada para 110 V conectada a uma rede de 220 V recebe o dobro da tensão esperada, o que pode danificá-la permanentemente e, em alguns casos, causar curto-circuito ou incêndio.

Fontes mais modernas eliminam esse risco com a tecnologia de chaveamento automático, chamada de bivolt automático ou PFC ativo. Elas detectam a tensão da rede e se ajustam sozinhas, operando em qualquer tensão entre 100 V e 240 V sem nenhuma intervenção do usuário. Nessas fontes, o seletor não existe.

## Conectores

A fonte distribui energia pelo sistema por meio de cabos com conectores específicos para cada tipo de componente. Cada conector tem formato, número de pinos e tensões fornecidas diferentes, o que reduz a chance de ligações incorretas por engano.

- **ATX 24 pinos:** conector principal da fonte, responsável por alimentar a placa-mãe. É o maior conector do conjunto e o primeiro a ser encaixado em qualquer montagem.

- **EPS 4+4 ou 8 pinos:** alimenta exclusivamente o processador. Fica em uma entrada separada na placa-mãe, geralmente próxima ao soquete da CPU, e fornece uma linha de 12 V dedicada para garantir estabilidade ao processador.

- **PCIe 6+2 pinos:** alimenta a placa de vídeo. Pode ser conectado como 6 ou 8 pinos conforme o modelo da placa. Placas de alto desempenho podem exigir dois ou três desses conectores simultaneamente.

- **SATA:** padrão atual para alimentação de SSDs e HDs. O conector tem formato fino e encaixe em L, o que facilita a identificação e a inserção correta.

- **Molex:** formato mais antigo, ainda presente em alguns componentes como controladores de fan hub e fitas de LED. Possui quatro pinos e encaixe por pressão.

## O papel da fonte na estabilidade do sistema

Uma fonte de baixa qualidade entrega tensões instáveis. O processador e a memória RAM dependem de uma alimentação precisa para operar corretamente: variações fora da tolerância causam erros silenciosos, travamentos aparentemente aleatórios e, em casos extremos, danos permanentes a componentes.

É por isso que a fonte costuma ser descrita como o componente mais importante a não ser economizado em uma montagem. Um processador moderno instalado com uma fonte inadequada vai operar mal, e identificar a fonte como culpada pode ser difícil, já que os sintomas se confundem com falhas em qualquer outro componente.
