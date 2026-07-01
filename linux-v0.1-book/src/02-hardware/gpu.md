# GPU

Por muito tempo, a GPU ficou nos bastidores. Era o componente que desenhava pixels na tela, útil para jogos e pouco mais. Isso mudou. Hoje a GPU é protagonista em machine learning, edição de vídeo, simulações científicas e renderização profissional. Entender o que ela faz e por que importa deixou de ser assunto exclusivo de quem monta computadores para jogos.

## O que é a GPU?

GPU significa *Graphics Processing Unit*, Unidade de Processamento Gráfico. É um chip dedicado ao processamento paralelo massivo: em vez de alguns poucos núcleos poderosos como a CPU, a GPU tem centenas ou milhares de núcleos menores, todos trabalhando ao mesmo tempo.

A razão para esse design é a natureza do trabalho gráfico. Para exibir uma cena em 3D na tela, a GPU precisa calcular a cor e posição de cada pixel, levando em conta luzes, sombras, texturas e a geometria dos objetos. Um monitor Full HD tem mais de dois milhões de pixels. A 60 quadros por segundo, isso são mais de 120 milhões de cálculos de pixels por segundo, e cada um com várias operações matemáticas envolvidas. Nenhum processador de uso geral com poucos núcleos consegue fazer isso em tempo real. A GPU resolve o problema com paralelismo: divide esse trabalho em milhares de tarefas idênticas e as executa simultaneamente.

Esse mesmo paralelismo é o que tornou a GPU indispensável fora dos jogos. Treinar uma rede neural, por exemplo, envolve multiplicar matrizes enormes repetidamente. É um trabalho monótono, altamente paralelizável, exatamente o tipo de tarefa para o qual a GPU foi projetada por acidente.

## Como ela processa imagens

O caminho de uma cena 3D até os pixels na tela segue um processo chamado *pipeline gráfico*, e entendê-lo ajuda a entender o que a GPU realmente faz.

O ponto de partida são os dados brutos da cena: a posição dos vértices que formam os objetos, as fontes de luz, as texturas das superfícies e a posição da câmera virtual. A GPU pega tudo isso e transforma em uma imagem bidimensional através de estágios sucessivos.

No estágio de geometria, a GPU transforma as coordenadas tridimensionais dos objetos em coordenadas de tela, descartando o que está fora do campo de visão. No estágio de rasterização, ela converte as formas geométricas em fragmentos, conjuntos de pixels candidatos a aparecer na tela. No estágio de sombreamento, calcula a cor final de cada fragmento levando em conta iluminação, texturas e efeitos especiais. No final, o resultado é enviado para o framebuffer e exibido no monitor.

Dois tipos de programas rodam durante esse processo: os *vertex shaders*, que processam vértices e transformações geométricas, e os *fragment shaders* (ou pixel shaders), que determinam a cor de cada pixel. A programação desses shaders é o que permite efeitos visuais sofisticados, de reflexos realistas a sombras dinâmicas e profundidade de campo.

### Ray tracing

O modelo de rasterização descrito acima é eficiente, mas aproxima a iluminação. Sombras, reflexos e refrações são simulados com truques que funcionam bem na maioria dos casos, mas falham em situações específicas.

O *ray tracing* é uma abordagem diferente: simula o comportamento físico da luz traçando raios virtuais a partir da câmera, calculando com o que cada raio colide, qual luz reflete e como os efeitos se propagam pela cena. O resultado é iluminação significativamente mais realista, com reflexos precisos, sombras suaves e iluminação global que leva em conta a luz que ricocheia entre superfícies.

O custo é alto. Ray tracing puro é computacionalmente intenso demais para tempo real sem hardware dedicado. GPUs modernas incluem unidades específicas para acelerar esses cálculos, e soluções de reconstrução de imagem por inteligência artificial, como o DLSS da NVIDIA e o FSR da AMD, permitem renderizar em resoluções menores e ampliar a imagem com qualidade preservada, economizando processamento.

## VRAM: a memória da GPU

A GPU tem sua própria memória, a *VRAM* (*Video RAM*). É nela que ficam as texturas, os buffers de geometria, os shaders compilados e o framebuffer com a imagem sendo construída. A VRAM é fisicamente integrada à placa de vídeo, conectada à GPU por um barramento muito mais largo do que a RAM principal: onde a memória convencional usa canais de 64 ou 128 bits, a VRAM pode usar 192, 256 ou até 384 bits, o que se traduz em largura de banda muito superior.

A quantidade de VRAM importa diretamente. Texturas de alta resolução em jogos modernos, cenas 3D complexas e modelos de linguagem carregados localmente consomem VRAM rapidamente. Quando a VRAM se esgota, o sistema começa a mover dados para a RAM principal ou para o armazenamento, com queda de desempenho perceptível ou erros de execução.

Os padrões de VRAM mais usados hoje são o GDDR6 e o GDDR6X, memórias otimizadas para largura de banda. GPUs de alto desempenho para aprendizado de máquina usam o HBM (*High Bandwidth Memory*), empilhado diretamente sobre o chip da GPU, com largura de banda muito superior ao GDDR, mas a custo e complexidade de fabricação muito maiores.

## GPU discreta e GPU integrada

Nem toda GPU é uma placa separada dentro do computador. Existem dois tipos fundamentais.

A **GPU integrada** vive dentro do mesmo chip que a CPU, compartilhando a memória RAM do sistema. Não tem VRAM própria: reserva uma porção da RAM para seu uso gráfico. O resultado é suficiente para uso cotidiano, reprodução de vídeo e aplicações de produtividade, mas fica aquém em jogos exigentes e tarefas de renderização pesada. A vantagem é o consumo de energia muito baixo, o que a torna a solução padrão em notebooks finos e computadores que priorizam autonomia.

A **GPU discreta** é um componente separado, com seu próprio chip, sua própria VRAM e seu próprio sistema de resfriamento. Conecta-se à placa-mãe pelo barramento PCIe, que fornece a largura de banda necessária para a troca de dados com a CPU. É o que vai dentro de um desktop gamer, de uma workstation de edição de vídeo e dos servidores usados para treinar modelos de inteligência artificial.

Notebooks mais avançados combinam os dois: a GPU integrada cuida do uso cotidiano, e a discreta entra em ação quando a tarefa exige mais potência. O sistema operacional alterna entre as duas automaticamente ou conforme configuração do usuário, equilibrando desempenho e consumo de energia.

## Fabricantes e arquiteturas

O mercado de GPUs discretas é dominado por dois fabricantes, com um terceiro entrando com força crescente.

A **NVIDIA** lidera em desempenho absoluto e no mercado de computação acelerada. Suas GPUs para consumidores seguem a linha GeForce, dividida em faixas:

- RTX 4060 e similares: entrada e uso intermediário, jogos em 1080p e 1440p
- RTX 4070 e 4080: desempenho alto, jogos em 1440p e 4K com ray tracing
- RTX 4090: topo de linha para consumidores, renderização profissional e AI local

Para servidores e machine learning, a NVIDIA oferece a linha Tesla e, mais recentemente, as arquiteturas A100 e H100, que dominam os data centers de grandes laboratórios de IA. O ecossistema de software da NVIDIA, o *CUDA*, é a plataforma mais madura para computação em GPU e a principal razão pela qual a empresa mantém vantagem no mercado profissional: a maioria dos frameworks de machine learning foi construída com suporte primário a CUDA.

A **AMD** compete com a linha Radeon para consumidores e com as GPUs Instinct para servidores. Suas GPUs oferecem boa relação custo-desempenho em jogos, e a AMD investiu nos últimos anos em construir um ecossistema de software alternativo ao CUDA, chamado ROCm. O progresso é real, mas o CUDA ainda tem vantagem em maturidade e compatibilidade com ferramentas de IA.

A **Intel** voltou ao mercado de GPUs discretas em 2022 com a linha Arc, após décadas vendendo apenas gráficos integrados. Os primeiros lançamentos tiveram desempenho inconsistente, mas melhorias de driver estabilizaram as placas ao longo do tempo. O Arc ainda não compete com o topo das linhas NVIDIA e AMD, mas é uma opção legítima em faixas de entrada e intermediário.

## Computação em GPU: além dos gráficos

A descoberta de que GPUs são eficientes para qualquer cálculo altamente paralelo transformou o componente em peça central da computação moderna.

Em machine learning, o treinamento de redes neurais é essencialmente multiplicação de matrizes em escala massiva. Uma GPU com milhares de núcleos pode paralelizar essas operações de forma que leva horas o que levaria semanas em uma CPU. É por isso que GPUs são a infraestrutura sobre a qual os grandes modelos de linguagem e sistemas de visão computacional são treinados.

Em renderização de vídeo e VFX, o processamento de efeitos, composição de camadas e codificação de vídeo são acelerados pela GPU, reduzindo o tempo de exportação de horas para minutos em projetos complexos.

Em ciência e engenharia, simulações de dinâmica de fluidos, modelagem molecular e previsão climática usam GPUs para processar volumes de dados que seriam inviáveis apenas com CPU.

## TDP e resfriamento

A GPU é frequentemente o componente que mais consome energia dentro de um computador. GPUs de alto desempenho para consumidores têm TDPs entre 150 W e 450 W. GPUs de data center, como a H100, chegam a 700 W.

Esse calor precisa ser dissipado. Placas de vídeo discretas vêm com sistemas de resfriamento próprios: coolers com dois ou três ventiladores são o padrão em GPUs de médio e alto desempenho. Em servidores, as GPUs são refrigeradas por fluxo de ar forçado pelo gabinete ou, em instalações de grande escala, por resfriamento líquido.

O consumo de energia da GPU também é o principal fator na escolha da fonte de alimentação. Montar um computador com uma GPU de alta performance exige uma fonte com potência suficiente e, muitas vezes, conectores de alimentação específicos para a placa, além dos que já vão para o processador e os demais componentes.

## A GPU no contexto do sistema

Assim como o processador raramente é o único gargalo, a GPU também não opera no vácuo. Uma GPU potente alimentada por um processador antigo pode desperdiçar seu potencial em jogos que dependem de cálculos de física e inteligência artificial na CPU. Pouca VRAM limita a resolução das texturas que podem ser carregadas. Uma fonte de alimentação subdimensionada pode causar instabilidade sob carga total.

O desempenho real é sempre o resultado do sistema como um todo. A GPU define o teto do que é possível renderizar e calcular em paralelo, mas são os outros componentes que determinam se esse teto será alcançado na prática.
