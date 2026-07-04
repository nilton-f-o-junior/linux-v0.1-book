# Resfriamento

Todo componente eletrônico que realiza trabalho gera calor como subproduto, se esse calor não for removido, os componentes esquentam além dos limites projetados, causando travamentos, danos permanentes ou em casos extremos, falha catastrófica. O resfriamento é o sistema responsável por manter cada componente dentro da sua faixa segura de temperatura.

## Como o calor sai do componente

O primeiro elo da cadeia é o contato físico entre o componente e o sistema de resfriamento, o processador, por exemplo: tem uma tampa metálica chamada IHS (*Integrated Heat Spreader*) que distribui o calor da área ativa do chip por uma superfície maior. Sobre essa tampa vai uma camada fina de pasta térmica, um material com alta condutividade que preenche as microscópicas imperfeições entre as superfícies metálicas, eliminando bolsas de ar que agiriam como isolante.

Sem pasta térmica, o contato real entre chip e dissipador seria apenas nos pontos mais altos das duas superfícies, ao usar a transferência acontece com muito menos resistência. É um componente simples e barato que tem impacto direto nas temperaturas de operação.

## Ventoinhas

A ventoinha é o componente mais fundamental do resfriamento ativo, e também o mais ignorado quando tudo funciona bem. Seu papel é mover ar: seja puxando ar fresco para dentro do gabinete, empurrando ar quente para fora ou forçando ar sobre as aletas de um dissipador.

- **Tamanho:** medido em milímetros (80 mm, 120 mm, 140 mm, 200 mm). Ventoinhas maiores movem o mesmo volume de ar com menos rotações, portanto com menos ruído. A maioria dos gabinetes modernos aceita 120 mm e 140 mm.

- **RPM (rotações por minuto):** define a velocidade máxima, mais RPM significa mais fluxo de ar e mais ruído. Uma ventoinha de 140 mm a 800 RPM pode mover tanto ar quanto uma de 120 mm a 1.200 RPM, com bem menos som.

- **CFM (*cubic feet per minute*):** medida do volume de ar movido por minuto, quanto maior, mais ar circula.

- **mmH₂O (pressão estática):** relevante para ventoinhas que precisam empurrar ar através de obstáculos como as aletas de um dissipador ou um radiador de water cooler. Alta pressão estática, não apenas alto CFM, é o que importa nesses casos.

- **Nível de ruído (dBA):** medido em decibéis ponderados, abaixo de 25 dBA é considerado quase inaudível em ambiente normal.

## Tipos de resfriamento

### Resfriamento a ar

É o modelo mais comum e suficiente para a maioria dos sistemas. Um dissipador metálico é fixado sobre o componente, e uma ou duas ventoinhas forçam ar pelas suas aletas.

Dentro do dissipador, é comum encontrar *heat pipes*: tubos selados contendo um fluido que evapora na parte quente, migra para a parte fria pelas aletas, condensa e retorna pela parede interna do tubo por capilaridade. É um mecanismo que transporta calor com muito mais eficiência do que o metal sólido sozinho faria.

Os principais formatos de cooler a ar:

- **Baixo perfil:** compacto e plano, adequado para gabinetes pequenos (ITX). Desempenho limitado pela menor massa metálica e fluxo de ar reduzido;

- **Torre simples:** aletas dispostas verticalmente com uma ventoinha soprando horizontalmente. Boa relação entre tamanho e desempenho, suficiente para a maioria dos processadores;

- **Torre dupla (*push-pull*):** duas torres de aletas com ventoinhas em ambos os lados, uma empurrando e outra puxando o ar simultaneamente. Maximiza o fluxo através das aletas e é a configuração de maior desempenho no resfriamento a ar.

### Resfriamento a líquido

Em vez de depender apenas do ar, o water cooling usa um líquido, geralmente água com aditivos antialga e anticorrosivo. Um bloco metálico (waterblock) fica em contato direto com o componente; o líquido circula por ele, absorve o calor e é bombeado até um radiador, onde é dissipado para o ar pelas ventoinhas e em seguida, retorna mais frio para o bloco.

O resultado é que o calor do processador é transportado para longe e dissipado em uma superfície maior: radiadores de 240 mm, 360 mm ou mais têm área de dissipação que nenhum cooler a ar consegue igualar.

- **AIO (*All-In-One*):** circuito fechado, com bomba e reservatório integrados no cabeçote; fácil de instalar e sem manutenção.

- **Loop customizado:** cada componente é escolhido e montado separadamente: reservatório, bomba, tubos, bloco e radiador. Permite incluir mais componentes no mesmo circuito (processador, placa de vídeo, chipset), maior controle sobre desempenho e estética, e fácil reposição de peças. Porém, exige conhecimento técnico maior, é mais caro e necessita de manutenções periódicas.

### Resfriamento passivo

Alguns sistemas dispensam ventoinhas completamente, um dissipador grande o suficiente pode evacuar o calor apenas por convecção natural: o ar quente sobe, ar fresco ocupa o lugar. É completamente silencioso, mas limitado a componentes com baixo TDP (*Thermal Design Power*, a quantidade de calor que o componente dissipa sob carga típica).

Aparelhos como roteadores, televisores e servidores de baixo consumo frequentemente usam resfriamento passivo, em processadores de alto desempenho, é impraticável.

## O gabinete e o fluxo de ar

Ter um bom cooler não é suficiente se o gabinete não permitir que o ar circule de forma eficiente. O objetivo não é apenas ter ventoinhas, mas posicioná-las de forma que o ar percorra um caminho lógico: entrando frio, passando pelos componentes e saindo quente.

A configuração mais comum posiciona as ventoinhas de entrada (*intake*) na frente e embaixo, e as de saída (*exhaust*) na traseira e no topo. Como o calor sobe naturalmente, a saída pelo topo aproveita a convecção, o resultado é uma pressão levemente positiva dentro do gabinete, que reduz a entrada de poeira pelas frestas.

A organização dos cabos internos também faz diferença, cabos soltos bloqueiam o fluxo de ar e criam zonas de acúmulo de calor. É uma das razões pelas quais fontes modulares são valorizadas em montagens que levam o resfriamento a sério.

## Mapa de calor

Dentro do gabinete, a distribuição de temperatura não é uniforme. Cada componente gera uma quantidade diferente de calor, e o fluxo de ar não alcança todas as regiões com a mesma eficiência.

As regiões críticas em um gabinete típico:

- Topo da placa-mãe (área da CPU);
- Área da placa de vídeo;
- Área da fonte de alimentação;
- Região do armazenamento;
- Região traseira e superior.

Entender o mapa de calor do sistema orienta decisões práticas: onde posicionar as ventoinhas adicionais, quais componentes precisam de atenção especial e como organizar o interior para que o fluxo de ar não seja interrompido antes de cumprir seu papel.

## Temperaturas e monitoramento

Todo componente tem uma temperatura máxima de operação especificada pelo fabricante, chamada de Tjunction ou Tmax, dependendo do fabricante e do componente. Quando o processador se aproxima desse limite, ele reduz automaticamente sua velocidade de operação para gerar menos calor, um mecanismo chamado *thermal throttling*.

Ferramentas gratuitas como: HWMonitor, HWiNFO64 e CoreTemp permitem monitorar as temperaturas em tempo real. Em uso cotidiano, processadores modernos costumam operar entre 40 °C e 70 °C, porém sob carga intensa, compilação de código, renderização ou jogos pesados, picos próximos a 90 °C são tolerados por muitos processadores modernos, mas temperaturas constantemente elevadas nessa faixa podem indicar que o sistema de resfriamento precisa de atenção.
