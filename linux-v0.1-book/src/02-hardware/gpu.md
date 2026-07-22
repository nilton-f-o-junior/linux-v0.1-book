# GPU

GPU significa Unidade de Processamento Gráfico. É um chip dedicado ao processamento paralelo massivo, em vez de poucos núcleos poderosos, como na CPU. A GPU tem centenas ou milhares de núcleos menores, todos operando simultaneamente.

Para exibir uma cena em 3D na tela, a GPU precisa calcular a cor e posição de cada pixel, levando em conta luzes, sombras, texturas e a geometria dos objetos. Um monitor Full HD tem mais de dois milhões de pixels, a 60 quadros por segundo. Isso são mais de 120 milhões de cálculos de pixels por segundo, e cada um com várias operações matemáticas envolvidas.

Nenhum processador de uso geral com poucos núcleos consegue fazer isso em tempo real. A GPU resolve o problema com paralelismo: ela divide esse trabalho em milhares de tarefas idênticas e as executa simultaneamente.

## Como ela processa imagens

O caminho de uma cena 3D até os pixels na tela segue um processo chamado *pipeline gráfico*, e entendê-lo ajuda a entender o que a GPU realmente faz.

O ponto de partida são os dados brutos da cena: a posição dos vértices que formam os objetos, as fontes de luz, as texturas das superfícies e a posição da câmera virtual. A GPU pega tudo isso e o transforma em uma imagem bidimensional através de estágios sucessivos.

- Geometria: transforma as coordenadas tridimensionais dos objetos em coordenadas de tela, descartando o que está fora do campo de visão;
- Rasterização: converte as formas geométricas em fragmentos ou conjuntos de pixels candidatos a aparecer na tela;
- Sombreamento: calcula a cor final de cada fragmento, levando em conta iluminação, texturas e efeitos especiais.

O resultado é enviado para o *framebuffer*: uma área de memória que armazena a imagem final antes de ser exibida, então enviado ao monitor.

Para que os softwares consigam conversar com a GPU, eles utilizam APIs gráficas (*Application Programming Interfaces*), como o OpenGL e o Vulkan. Essas interfaces funcionam como tradutores, permitindo que o desenvolvedor envie instruções de renderização que a GPU consiga processar, independentemente do modelo da placa.

### Ray tracing

O modelo de rasterização descrito acima é eficiente, mas demanda um trabalho maior para se aproxima da iluminação real, o *ray tracing* é uma abordagem diferente: simula o comportamento físico da luz traçando raios virtuais a partir da câmera, calculando com o que cada raio colide, qual luz reflete e como os efeitos se propagam pela cena. O resultado é iluminação significativamente mais realista, com reflexos precisos, sombras suaves e iluminação global que leva em conta a luz que ricocheia entre superfícies.

O Ray tracing puro é computacionalmente intenso demais para tempo real sem hardware dedicado, GPUs modernas incluem unidades específicas para acelerar esses cálculos e abordagens de reconstrução de imagem, algumas apoiadas em inteligência artificial, como o DLSS da NVIDIA e o FSR da AMD, permitem renderizar em resoluções menores e ampliar a imagem com qualidade preservada, economizando processamento.

## VRAM: a memória da GPU

A GPU tem sua própria memória, a *VRAM* (*Video RAM*). É nela que ficam as texturas, os buffers de geometria, os shaders compilados e o framebuffer com a imagem sendo construída. A VRAM é fisicamente integrada à placa de vídeo, conectada à GPU por um barramento muito mais largo do que a RAM principal. Enquanto a memória convencional usa canais de 64 ou 128 bits, a VRAM pode usar 192, 256 ou até 384 bits, o que se traduz em largura de banda muito superior.

A quantidade de VRAM importa diretamente: texturas de alta resolução em jogos modernos, cenas 3D complexas e modelos de linguagem carregados localmente consomem VRAM rapidamente. Quando a VRAM se esgota, o sistema começa a mover dados para a RAM principal ou para o armazenamento, com queda de desempenho perceptível ou erros de execução.

## GPU discreta e GPU integrada

Nem toda GPU é uma placa separada dentro do computador. Existem dois tipos fundamentais:

- **GPU integrada:** vive dentro do mesmo chip que a CPU, compartilhando a memória RAM do sistema, não tem VRAM própria: reserva uma porção da RAM para seu uso gráfico. O resultado é suficiente para uso cotidiano, mas fica aquém em jogos exigentes e tarefas pesadas. A vantagem é o consumo de energia muito baixo, o que a torna a solução padrão em notebooks finos e computadores de entrada;

- **GPU discreta:** é um componente separado, com seu próprio chip, sua própria VRAM e seu próprio sistema de resfriamento. Conecta-se à placa-mãe pelo barramento PCIe, que fornece a largura de banda necessária para a troca de dados com a CPU. É o que vai dentro de um desktop gamer, de uma workstation de edição de vídeo e dos servidores usados para treinar modelos de inteligência artificial.

## Fabricantes e arquiteturas

O mercado de GPUs discretas é dominado por dois fabricantes, com um terceiro entrando com força crescente.

- **NVIDIA:** lidera em desempenho absoluto e no mercado de computação acelerada, as GPUs para consumidores seguem a linha GeForce;

- **AMD:** compete com a linha Radeon para consumidores, possui drivers de código aberto integrados ao kernel do Linux, facilitando a instalação e a estabilidade do sistema;

- **Intel:** voltou ao mercado de GPUs discretas em 2022 com a linha Arc, após décadas vendendo apenas gráficos integrados.

## TDP e resfriamento

A GPU é frequentemente o componente que mais consome energia dentro de um computador. GPUs de alto desempenho para consumidores têm TDPs entre 150 W e 450 W. GPUs de data center de ponta já ultrapassam a marca de 700 W, e essa tendência de alta segue a cada nova geração.

Esse calor precisa ser dissipado. Placas de vídeo discretas vêm com sistemas de resfriamento próprios: coolers com dois ou três ventiladores são o padrão em GPUs de médio e alto desempenho. 

O consumo de energia da GPU também é o principal fator na escolha da fonte de alimentação. Montar um computador com uma GPU de alta performance exige uma fonte com potência suficiente e, muitas vezes, conectores de alimentação específicos para a placa, além dos que já vão para o processador e os demais componentes.
