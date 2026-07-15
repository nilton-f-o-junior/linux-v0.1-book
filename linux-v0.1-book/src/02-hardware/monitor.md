# Monitor

Cada imagem que aparece na tela passou antes por um longo caminho dentro do computador: o processador calculou, a placa de vídeo renderizou, e o monitor transformou tudo isso em luz. É o único componente com o qual o usuário interage visualmente o tempo todo, mas raramente se pensa no que acontece dentro dele para que uma imagem apareça ali.

## O que é um monitor?

O monitor é o dispositivo de saída visual do computador. Ele recebe um sinal do sistema, seja analógico ou digital, e o converte em uma imagem formada por milhões de pequenos pontos de luz chamados pixels. Cada pixel é composto por três subpixels nas cores primárias da luz: vermelho, verde e azul. A combinação dessas três intensidades em cada ponto é capaz de reproduzir uma ampla gama de cores visíveis ao olho humano.

A imagem não é estática, o monitor redesenha a tela dezenas de vezes por segundo, criando a ilusão de movimento. A frequência com que isso acontece é chamada de taxa de atualização.

## Tecnologias de painel

A forma como os pixels são construídos e iluminados define boa parte das características do monitor. Quatro tecnologias são relevantes no mercado atual, cada uma com características e casos de uso distintos.

Antes de entrar nas variações, vale entender dois termos que aparecem com frequência:

- **LCD (*Liquid Crystal Display*):** é a base da maioria dos monitores: a imagem é formada por cristais líquidos que controlam a passagem de luz, mas que não emitem luz por conta própria, dependendo de uma iluminação de fundo chamada backlight.
- **LED:** refere-se ao tipo de *backlight*, não a uma tecnologia de painel separada: monitores chamados de "LED" simplesmente usam diodos emissores de luz para iluminar o painel LCD por trás, em vez das fluorescentes mais antigas. É uma forma de iluminação mais eficiente, que permite designs mais finos e melhor precisão de cores em comparação com os modelos fluorescentes.

### IPS

O painel IPS (*In-Plane Switching*) é conhecido pela qualidade de cor e pelos ângulos de visão amplos. As cores permanecem precisas mesmo quando o monitor é visto de lado ou de cima, sem o desvio perceptível que outros painéis apresentam. Por isso, é a tecnologia preferida em trabalhos que exigem fidelidade visual: edição de fotos, design gráfico e produção de vídeo.

- **Vantagens:** cores precisas e consistentes, ângulos de visão excelentes;
- **Desvantagens:** historicamente mais caro e com tempo de resposta um pouco maior que painéis TN, embora os modelos modernos tenham reduzido bastante essa diferença;
- **Uso típico:** criação de conteúdo, uso profissional, consumo geral de alta qualidade.

### TN

O painel TN (*Twisted Nematic*) é a tecnologia LCD mais antiga entre as apresentadas e ainda presente principalmente em monitores voltados a jogos de entrada e intermediários. Seu diferencial é o tempo de resposta baixo, que pode chegar a 1 ms nos melhores modelos, reduzindo o borrão em cenas de movimento rápido.

Em contrapartida, os ângulos de visão são ruins: as cores se distorcem visivelmente ao olhar o painel de qualquer posição que não seja diretamente de frente, a reprodução de cores também é inferior ao IPS.

- **Vantagens:** tempo de resposta muito baixo, custo reduzido;
- **Desvantagens:** ângulos de visão limitados, qualidade de cor inferior;
- **Uso típico:** jogos competitivos onde velocidade importa mais que fidelidade visual.

### VA 

O painel VA (*Vertical Alignment*) ocupa o meio-termo entre IPS e TN, seu destaque é a taxa de contraste nativa, significativamente maior que a das outras tecnologias. Isso se traduz em pixels capazes de bloquear melhor a luz de fundo, produzindo regiões escuras com muito mais fidelidade na tela, e uma percepção de imagem mais tridimensional, especialmente em ambientes com pouca luz.

Os ângulos de visão são melhores que o TN mas inferiores ao IPS, o tempo de resposta pode apresentar um problema específico chamado *smearing*, um rastro perceptível em cenas com transições entre tons escuros e claros durante movimentos rápidos, embora painéis VA mais modernos tenham atenuado esse comportamento.

- **Vantagens:** contraste elevado, maior capacidade de escurecer pixels e reproduzir a ausência de luz com fidelidade, boa experiência em filmes e conteúdo cinematográfico;
- **Desvantagens:** *smearing* em alguns modelos, desempenho em jogos inferior ao TN e IPS modernos;
- **Uso típico:** consumo de filmes e séries, uso geral com ênfase em qualidade visual.

### OLED

O OLED (*Organic Light-Emitting Diode*) representa uma mudança estrutural em relação às tecnologias anteriores. Nos painéis LCD convencionais (IPS, TN e VA), os pixels não emitem luz: eles filtram uma iluminação de fundo chamada *backlight*. No OLED, cada pixel é sua própria fonte de luz e pode ser apagado individualmente.

O resultado é um preto absoluto: quando um pixel está apagado, ele não emite nenhuma luz. O contraste é, na prática, muito superior ao de qualquer painel LCD, já que pixels completamente apagados não emitem luz alguma, algo que nenhum LCD consegue replicar. As cores são vibrantes e o tempo de resposta é extremamente baixo, monitores OLED costumam atingir picos elevados de brilho (medidos em nits), o que favorece o uso em ambientes com bastante luz ambiente.

A principal preocupação com monitores OLED é a queima de tela (*burn-in*): pixels que exibem imagens estáticas por períodos muito longos podem degradar de forma permanente, deixando uma sombra visível. Fabricantes têm implementado mecanismos de mitigação, mas o cuidado ainda é relevante para usos que envolvam elementos fixos na tela, como barras de tarefas ou HUDs de jogos.

- **Vantagens:** contraste infinito, pixels que se apagam completamente eliminando qualquer emissão de luz, cores excepcionais, tempo de resposta mínimo;
- **Desvantagens:** custo elevado, risco de *burn-in* em uso prolongado com imagens estáticas;
- **Uso típico:** entusiastas, jogos de alto nível, edição profissional de vídeo e fotografia.

### HDR (*High Dynamic Range*)

O HDR é uma tecnologia que amplia a gama de cores e o contraste, permitindo que as partes claras da imagem sejam mais brilhantes e as escuras mais profundas, resultando em uma imagem mais próxima da realidade.

## Resolução e o Ambiente Linux

A resolução define quantos pixels compõem a imagem. Mais pixels significam mais detalhes visíveis, mas também maior exigência da placa de vídeo para renderizar. Em sistemas Linux, o gerenciamento de múltiplos monitores e resoluções é feito diretamente por servidores gráficos como o **Xorg** ou o moderno **Wayland**, que lidam com o escalonamento da interface para que os elementos não fiquem pequenos demais em telas de alta densidade.

As resoluções mais comuns no mercado atual:

- **Full HD (1920 × 1080):** padrão dominante por anos, ainda presente na maioria dos monitores de entrada e meio de gama. Adequado para telas de até 27 polegadas; em tamanhos maiores, a densidade de pixels começa a ser percebida;
- **QHD (2560 × 1440):** equilíbrio entre nitidez e desempenho, indicado para monitores de 27 a 32 polegadas, exige mais da placa de vídeo que o Full HD mas sem o custo total do 4K. O termo "2K" é usado informalmente no mercado para se referir a essa resolução, embora tecnicamente 2K corresponda ao padrão de cinema digital (2048×1080);
- **4K / UHD (3840 × 2160):** quatro vezes mais pixels que o Full HD, a nitidez é notável em telas maiores, especialmente para edição de imagem e vídeo. Exige hardware potente para jogos nessa resolução com desempenho fluido.

## Taxa de atualização

A taxa de atualização é medida em hertz (Hz) e indica quantas vezes por segundo o monitor redesenha a imagem. Um monitor de 60 Hz exibe até 60 quadros por segundo, um de 144 Hz até 144.

Para tarefas de escritório, navegação e consumo de conteúdo, 60 Hz é suficiente. Em jogos ou na própria fluidez ao arrastar janelas na interface gráfica, a diferença para 144 Hz é perceptível: o movimento parece mais suave e a resposta imediata. Monitores de 165 Hz, 240 Hz e até 360 Hz existem no mercado, voltados a jogadores competitivos.

A taxa de atualização do monitor só se traduz em benefício real se a placa de vídeo conseguir entregar quadros suficientes por segundo. Se uma placa renderiza apenas 60 quadros por segundo em um monitor de 144 Hz, o monitor repetirá os quadros captados, operando visualmente à taxa da placa.

## Tempo de resposta

O tempo de resposta indica quanto tempo um pixel leva para mudar de uma cor para outra, medido em milissegundos (ms). Tempos de resposta altos resultam em *ghosting*: um rastro visível atrás de objetos em movimento rápido.

Para uso geral, qualquer valor abaixo de 5 ms é imperceptível, já para jogos rápidos, valores entre 1 e 2 ms são desejáveis. Fabricantes frequentemente divulgam o menor tempo de resposta possível nas especificações, medido em condições ideais, geralmente entre transições de cinza para cinza (GtG).

## Sincronização adaptativa

Quando a placa de vídeo entrega quadros em ritmo variável e o monitor os exibe em intervalos fixos, o resultado pode ser o *tearing*: uma divisão horizontal visível na imagem, como se dois quadros diferentes fossem exibidos ao mesmo tempo. As tecnologias de sincronização adaptativa resolvem esse problema.

- **G-Sync (NVIDIA):** Sincroniza o monitor com a saída da placa de vídeo NVIDIA. Originalmente exigia um módulo de hardware proprietário embutido no monitor (o que elevava seu custo), mas hoje também funciona via software em telas certificadas como *G-Sync Compatible*.
- **FreeSync (AMD):** padrão aberto baseado em Adaptive-Sync, suportado pela maioria dos monitores modernos. Funciona nativamente com placas AMD e também com placas NVIDIA em monitores compatíveis. Ambas as tecnologias são suportadas no Linux, especialmente sob o servidor gráfico Wayland.

## Conexões

O monitor se comunica com o computador por meio de cabos que transportam o sinal de vídeo digital. Cada padrão tem capacidades diferentes em termos de resolução e taxa de atualização suportadas, os mesmos conectores se aplicam tanto a desktops quanto a notebooks.

- **HDMI:** o conector mais universal, presente em monitores, televisores, consoles e placas de vídeo. Versões mais recentes suportam 4K a 120 Hz ou mais, mas é preciso atentar à versão do cabo e das portas envolvidas;
- **DisplayPort:** padrão preferido em ambientes de PC desktop, especialmente para altas taxas de atualização. Suporta encadeamento de monitores em equipamentos compatíveis;
- **USB-C / Thunderbolt:** presente em notebooks modernos e monitores mais recentes. Um único cabo pode transmitir vídeo, dados e energia ao mesmo tempo, simplificando a conexão;
- **VGA:** conector analógico antigo, ainda encontrado em monitores e computadores mais velhos. Transmite sinal analógico, com qualidade inferior aos padrões digitais atuais.

## Proporção de tela

A proporção de tela é a relação entre a largura e a altura do painel, expressa no formato largura:altura. Ela define o formato da imagem exibida e influencia tanto a experiência visual quanto a compatibilidade com diferentes tipos de conteúdo.

- **16:9:** é a mais comum no mercado atual e o padrão para a maioria dos vídeos, jogos e interfaces de sistema operacional. Monitores Full HD, QHD e 4K seguem essa proporção;
- **16:10:** ligeiramente mais alta que o 16:9, tem ganhado espaço em monitores voltados a produtividade e em notebooks, oferecendo mais área vertical para documentos e códigos de programação;
- **21:9:** chamada de ultrawide, oferece uma tela significativamente mais larga. Em produtividade, permite exibir dois documentos ou janelas lado a lado sem a necessidade de um segundo monitor;
- **32:9:** existem no segmento entusiasta e equivalem a dois monitores 16:9 fundidos em uma única tela, sem a divisão física entre eles.

## Ergonomia e ajustes físicos

A posição do monitor afeta diretamente o conforto em uso prolongado. Monitores com suporte ajustável permitem regular altura, inclinação e, em alguns modelos, rotação (pivot), o que possibilita usar o monitor em orientação vertical, útil para leitura de código, documentos longos ou feeds de redes sociais.

A distância recomendada entre os olhos e a tela varia conforme o tamanho do monitor, mas em geral fica entre 50 e 80 cm. A parte superior da tela deve estar aproximadamente na altura dos olhos ou levemente abaixo, para reduzir a tensão no pescoço.

Monitores com certificação de baixa emissão de luz azul ou com modo de filtragem de luz azul ativável no software podem reduzir o cansaço visual em sessões longas, embora os estudos sobre o impacto real da luz azul de monitores ainda não sejam concluivos.
