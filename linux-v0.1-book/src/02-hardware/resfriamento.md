# Resfriamento

Todo componente eletrônico que realiza trabalho gera calor como subproduto. Se esse calor não for removido, os componentes esquentam além dos limites projetados, causando travamentos, danos permanentes ou falhas. O resfriamento é o sistema responsável por manter cada componente dentro da sua faixa segura de temperatura.

## Como o calor sai do componente

O primeiro elo da cadeia é o contato físico entre o componente e o sistema de resfriamento. O processador possui uma tampa metálica chamada IHS (*Integrated Heat Spreader*) que distribui o calor da área ativa do chip por uma superfície maior. Sobre essa tampa vai uma camada fina de pasta térmica, um material com alta condutividade que preenche as microscópicas imperfeições entre as superfícies metálicas, eliminando bolsas de ar que agiriam como isolante.

Sem pasta térmica, o contato real entre chip e dissipador seria apenas nos pontos mais altos das duas superfícies. O uso deste composto reduz drasticamente a resistência térmica e tem impacto direto nas temperaturas de operação.

## Ventoinhas

As ventoinhas movem o ar: seja puxando ar fresco para dentro do gabinete, empurrando ar quente para fora ou forçando o fluxo de ar sobre as aletas de um dissipador.

- **Tamanho:** medido em milímetros (80 mm, 120 mm, 140 mm, 200 mm). Ventoinhas maiores movem o mesmo volume de ar com menos rotações, portanto com menos ruído;
- **RPM (rotações por minuto):** define a velocidade máxima, mais RPM significa mais fluxo de ar e mais ruído;
- **CFM (*cubic feet per minute*):** medida do volume bruto de ar movido por minuto;
- **mmH₂O (pressão estática):** capacidade de empurrar o ar contra resistências, sendo relevante para ventoinhas que precisam empurrar ar através de obstáculos rígidos, como as aletas apertadas de um dissipador ou um radiador de water cooler;
- **Nível de ruído (dBA):** medido em decibéis ponderados.

## Tipos de resfriamento

### Resfriamento a ar

É o modelo mais comum e suficiente para a maioria dos sistemas. Um dissipador metálico é fixado sobre o componente, e uma ou duas ventoinhas forçam ar pelas suas aletas.

Dentro do dissipador, é comum encontrar *heat pipes*: tubos selados contendo um fluido que evapora na parte quente, migra para a parte fria pelas aletas, condensa e retorna pela parede interna do tubo por capilaridade.



[Image of heat pipe working principle]


Os principais formatos de cooler a ar:
- **Baixo perfil:** compacto e plano, adequado para gabinetes pequenos (ITX);
- **Torre simples:** aletas dispostas verticalmente com uma ventoinha soprando horizontalmente;
- **Torre dupla (*push-pull*):** duas torres de aletas com ventoinhas em ambos os lados, maximizando o fluxo através das aletas.

### Resfriamento a líquido

Em vez de depender apenas do ar, o water cooling usa um líquido (geralmente água com aditivos antialga e anticorrosivo). Um bloco metálico (waterblock) fica em contato direto com o componente; o líquido circula por ele, absorve o calor e é bombeado até um radiador, onde é dissipado para o ar pelas ventoinhas.

- **AIO (*All-In-One*):** circuito fechado, com bomba e reservatório integrados no cabeçote; fácil de instalar e sem manutenção.
- **Loop customizado:** cada componente é escolhido e montado separadamente (reservatório, bomba, tubos, bloco e radiador). Exige conhecimento técnico maior, é mais caro e necessita de manutenções periódicas.

### Resfriamento passivo

Alguns sistemas dispensam ventoinhas completamente. Um dissipador grande o suficiente pode evacuar o calor apenas por convecção natural. É completamente silencioso, mas limitado a componentes com baixo TDP (*Thermal Design Power*).

## O gabinete e o fluxo de ar

A configuração mais comum posiciona as ventoinhas de entrada (*intake*) na frente e embaixo, e as de saída (*exhaust*) na traseira e no topo. Como o ar quente sobe naturalmente, a saída pelo topo aproveita a convecção. Manter os cabos internos organizados evita o bloqueio desse fluxo de ar.

## Mapa de calor

As regiões críticas em um gabinete típico incluem a área da CPU (topo da placa-mãe), área da placa de vídeo, fonte de alimentação e a região traseira superior. Entender este mapa orienta o posicionamento estratégico de ventoinhas adicionais.

## Temperaturas e Monitoramento no Linux

Quando o processador se aproxima do seu limite térmico de fábrica (Tjunction ou Tmax), ele reduz automaticamente sua velocidade de operação para gerar menos calor e evitar a queima, um mecanismo de proteção chamado *thermal throttling*.

No Linux, o monitoramento dessas métricas não depende de softwares pesados proprietários. O próprio sistema operacional expõe esses dados diretamente através do sistema de arquivos virtual `/sys/class/hwmon/`. Na prática, o administrador ou usuário utiliza ferramentas de terminal consolidadas, como o pacote `lm-sensors` (através do comando `sensors`), ou utilitários gráficos da sua distribuição para acompanhar as temperaturas em tempo real e diagnosticar problemas de arrefecimento.
