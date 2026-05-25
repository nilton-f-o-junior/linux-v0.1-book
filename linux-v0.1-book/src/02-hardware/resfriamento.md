# Resfriamento

Todo componente eletrônico que realiza trabalho gera calor como subproduto. O processador calculando, a memória RAM transferindo dados, a placa de vídeo renderizando uma cena tridimensional: todos esses processos dissipam energia na forma de calor. Se esse calor não for removido, os componentes esquentam além dos limites projetados, causando travamentos, danos permanentes ou, em casos extremos, falha catastrófica.

O resfriamento é o sistema responsável por manter cada componente dentro da sua faixa segura de temperatura. Ele não é um único componente, mas uma cadeia: o calor precisa sair do chip, ser transportado até uma superfície maior, e dali ser empurrado para fora do gabinete.

## Como o calor sai do componente

O primeiro elo da cadeia é o contato físico entre o componente e o sistema de resfriamento. O processador, por exemplo, tem uma tampa metálica chamada IHS (Integrated Heat Spreader) que distribui o calor da área ativa do chip por uma superfície maior. Sobre essa tampa vai uma camada fina de pasta térmica, um material com alta condutividade que preenche as microscópicas imperfeições entre as superfícies metálicas, eliminando bolsas de ar que agiriam como isolante.

Sem pasta térmica, o contato real entre chip e dissipador seria apenas nos pontos mais altos das duas superfícies. Com ela, a transferência acontece com muito menos resistência. É um componente simples e barato que tem impacto direto nas temperaturas de operação.

## Ventoinhas

A ventoinha é o componente mais fundamental do resfriamento ativo, e também o mais ignorado quando tudo funciona bem. Seu papel é mover ar: seja puxando ar fresco para dentro do gabinete, empurrando ar quente para fora, ou forçando ar sobre as aletas de um dissipador.

### Especificações

As especificações que importam na hora de escolher ou comparar ventoinhas:

- **Tamanho**: medido em milímetros (80 mm, 120 mm, 140 mm, 200 mm). Ventoinhas maiores movem o mesmo volume de ar com menos rotações, portanto com menos ruído. A maioria dos gabinetes modernos aceita 120 mm e 140 mm.
- **RPM (rotações por minuto)**: define a velocidade máxima. Mais RPM significa mais fluxo de ar e mais ruído. Uma ventoinha de 140 mm a 800 RPM pode mover tanto ar quanto uma de 120 mm a 1.200 RPM, com bem menos som.
- **CFM (cubic feet per minute)**: medida do volume de ar movido por minuto. Quanto maior, mais ar circula.
- **mmH₂O (pressão estática)**: relevante para ventoinhas que precisam empurrar ar através de obstáculos como as aletas de um dissipador ou um radiador de water cooler. Alta pressão estática, não apenas alto CFM, é o que importa nesses casos.
- **Nível de ruído (dBA)**: medido em decibéis ponderados. Abaixo de 25 dBA é considerado quase inaudível em ambiente normal.

### Rolamentos

O rolamento do eixo central determina a longevidade e o comportamento sonoro da ventoinha ao longo do tempo.

- **Sleeve bearing (bucha):** o mais barato. Funciona bem com o eixo na posição horizontal, mas o desgaste é maior quando o eixo fica na vertical, como em ventoinhas instaladas no topo do gabinete. Também é mais sensível a temperaturas altas. Vida útil típica de 20.000 a 30.000 horas.
- **Ball bearing (esfera):** usa esferas metálicas no eixo. Funciona bem em qualquer orientação, suporta mais calor e tem vida útil mais longa, 50.000 horas ou mais, mas pode produzir um leve ruído característico quando novo.
- **Fluid dynamic bearing (FDB):** usa um filme de óleo pressurizado. Combina a silenciosidade do sleeve com a durabilidade do ball bearing. É o padrão em ventoinhas de qualidade média para cima.
- **Magnetic levitation (Maglev):** o eixo flutua por campos magnéticos, sem contato físico. Extremamente silencioso e duradouro, usado em ventoinhas de alto desempenho.

## Tipos de resfriamento

### Resfriamento a ar

É o modelo mais comum e suficiente para a maioria dos sistemas. Um dissipador metálico é fixado sobre o componente, e uma ou duas ventoinhas forçam ar pelas suas aletas.

A escolha do metal importa: o cobre conduz calor com mais eficiência, mas é pesado e caro. O alumínio é mais leve e barato, porém menos condutor. Dissipadores de alto desempenho frequentemente combinam os dois: uma base de cobre em contato com o chip e aletas de alumínio para a dissipação final.

Dentro do dissipador, é comum encontrar heat pipes: tubos selados contendo um fluido que evapora na parte quente, migra para a parte fria pelas aletas, condensa e retorna pela parede interna do tubo por capilaridade. É um mecanismo que transporta calor com muito mais eficiência do que o metal sólido sozinho faria.

Os principais formatos de cooler a ar:

- **Baixo perfil:** compacto e plano, adequado para gabinetes pequenos (ITX). Desempenho limitado pela menor massa metálica e fluxo de ar reduzido.
- **Torre simples:** aletas dispostas verticalmente com uma ventoinha soprando horizontalmente. Boa relação entre tamanho e desempenho, suficiente para a maioria dos processadores.
- **Torre dupla (push-pull):** duas torres de aletas com ventoinhas em ambos os lados, uma empurrando e outra puxando o ar simultaneamente. Maximiza o fluxo através das aletas e é a configuração de maior desempenho no resfriamento a ar.

### Resfriamento a líquido

Em vez de depender apenas do ar, o water cooling usa um líquido, geralmente água com aditivos antialgae e anticorrosão, como meio de transporte térmico. Um bloco metálico (waterblock) fica em contato direto com o componente. O líquido circula pelo bloco, absorve o calor, é bombeado até um radiador e ali dissipado para o ar pelas ventoinhas. Então retorna, mais frio, para o bloco.

O resultado é que o calor do processador é transportado para longe e dissipado em uma superfície maior. Radiadores de 240 mm, 360 mm ou mais têm área de dissipação que nenhum cooler a ar consegue igualar.

**AIO (All-In-One):** circuito fechado, selado de fábrica, com bomba e reservatório integrados no cabeçote. Fácil de instalar, sem manutenção. Boa escolha para quem quer o desempenho do water cooling sem a complexidade do loop customizado.

**Loop customizado:** cada componente, reservatório, bomba, tubos, bloco e radiador, é escolhido e montado separadamente. Permite incluir mais componentes no mesmo circuito (processador, placa de vídeo, chipset), maior controle sobre o desempenho e a estética, e fácil reposição de peças. Exige mais planejamento, manutenção periódica e investimento inicial maior.

### Resfriamento passivo

Alguns sistemas dispensam ventoinhas completamente. Um dissipador grande o suficiente pode evacuar o calor apenas por convecção natural: o ar quente sobe, ar fresco ocupa o lugar. É completamente silencioso, mas limitado a componentes com baixo TDP (Thermal Design Power, a quantidade de calor que o componente dissipa sob carga típica).

Aparelhos como roteadores, televisores e servidores de baixo consumo frequentemente usam resfriamento passivo. Em processadores de alto desempenho, é impraticável.

## O gabinete e o fluxo de ar

Ter um bom cooler não é suficiente se o gabinete não permitir que o ar circule de forma eficiente.

O gabinete não é um invólucro passivo: é parte ativa do sistema de resfriamento. O objetivo não é apenas ter ventoinhas, mas posicioná-las de forma que o ar percorra um caminho lógico: entrando frio, passando pelos componentes e saindo quente.

A configuração mais comum posiciona as ventoinhas de entrada (intake) na frente e embaixo, e as de saída (exhaust) na traseira e no topo. Como o calor sobe naturalmente, a saída pelo topo aproveita a convecção. O resultado é uma pressão levemente positiva dentro do gabinete, que reduz a entrada de poeira pelas frestas.

A pressão interna do gabinete é um parâmetro deliberado:

- **Pressão positiva** (mais entradas que saídas): ar entra pelos filtros, menos poeira se acumula. Temperatura ligeiramente mais alta.
- **Pressão negativa** (mais saídas que entradas): ar é sugado por qualquer fresta, sem filtrar. Mais poeira a longo prazo, mas fluxo mais intenso.
- **Pressão neutra** (entradas e saídas equilibradas): o compromisso entre os dois extremos, comum em configurações bem planejadas.

A organização dos cabos internos também faz diferença. Cabos soltos bloqueiam o fluxo de ar e criam zonas de acúmulo de calor. É uma das razões pelas quais fontes modulares são valorizadas em montagens que levam o resfriamento a sério.

## Mapa de calor

Dentro do gabinete, a distribuição de temperatura não é uniforme. Cada componente gera uma quantidade diferente de calor, e o fluxo de ar não alcança todas as regiões com a mesma eficiência.

O processador e a placa de vídeo concentram a maior parte da carga térmica. Em um sistema moderno com placa de vídeo dedicada, a GPU costuma superar a CPU em geração de calor, não sendo incomum encontrar placas de vídeo topo de linha com TDP acima de 300 W, enquanto processadores de alto desempenho ficam na faixa de 100 a 200 W.

As regiões críticas em um gabinete típico:

- **Topo da placa-mãe (área da CPU):** alta concentração de calor, diretamente sob o cooler. É o ponto mais bem servido de fluxo de ar intencional.
- **Área da placa de vídeo:** geração de calor intensa. Placas modernas têm três ventoinhas próprias e expelem o ar quente para dentro do gabinete, e esse ar precisa ser evacuado pelas ventoinhas do gabinete.
- **Área da fonte de alimentação:** gera calor próprio e tem sua ventoinha interna. Em gabinetes com fonte na parte inferior, fica parcialmente isolada do restante do sistema.
- **Região do armazenamento:** SSDs NVMe em slots M.2 podem esquentar significativamente sob carga de leitura e escrita intensa. Muitas placas-mãe incluem dissipadores metálicos sobre esses slots exatamente por esse motivo.
- **Região traseira e superior:** zona de saída de ar. É naturalmente mais quente que a entrada frontal.

Entender o mapa de calor do sistema orienta decisões práticas: onde posicionar as ventoinhas adicionais, quais componentes precisam de atenção especial e como organizar o interior para que o fluxo de ar não seja interrompido antes de cumprir seu papel.

## Temperaturas e monitoramento

Todo componente tem uma temperatura máxima de operação especificada pelo fabricante, chamada de Tjunction ou Tmax, dependendo do fabricante e do componente. Quando o processador se aproxima desse limite, ele reduz automaticamente sua velocidade de operação para gerar menos calor, um mecanismo chamado thermal throttling. É uma proteção: o sistema fica mais lento, mas o hardware não é danificado.

Ferramentas gratuitas como HWMonitor, HWiNFO64 e CoreTemp permitem monitorar as temperaturas em tempo real. Em uso cotidiano, processadores modernos costumam operar entre 40 °C e 70 °C. Sob carga intensa, compilação de código, renderização ou jogos pesados, picos próximos a 90 °C são tolerados por muitos processadores modernos, mas temperaturas constantemente elevadas nessa faixa podem indicar que o sistema de resfriamento precisa de atenção.

O resfriamento é, portanto, o que garante que todo o restante do hardware possa operar dentro dos parâmetros para os quais foi projetado, de forma estável e duradoura.
