# Placa-mãe

Ela não processa, não armazena e não exibe: ela conecta. Além de conectar fisicamente, a placa-mãe gerencia a comunicação entre os componentes.

## Chipset

Dentro da placa-mãe há um conjunto de circuitos chamado chipset. Ele funciona como um intermediário entre o processador e os demais componentes: portas USB, conectores SATA, slots PCIe adicionais e outras interfaces.

Processadores modernos integram parte das funções que antes eram exclusivas do chipset, como o controlador de memória e algumas linhas PCIe diretas.

A escolha do chipset define em grande parte o que a placa-mãe suporta. Chipsets de linha mais alta permitem *overclocking*, oferecem mais linhas PCIe e mais portas USB. Chipsets de entrada restringem algumas dessas opções para reduzir custo. 

## Tamanho

O *form factor* define as dimensões físicas da placa, a disposição dos furos de fixação e, consequentemente, quais gabinetes a aceitam. Os três formatos mais comuns no mercado atual são:

- **ATX:** o formato padrão para desktops. Mede 305 × 244 mm e oferece o maior número de slots e conectores. É a escolha natural para montagens sem restrições de espaço.

- **Micro-ATX:** menor que o ATX, com 244 × 244 mm. Cabe em gabinetes menores e ainda oferece slots suficientes para a maioria dos usos. É um equilíbrio comum entre tamanho e capacidade de expansão.

- **Mini-ITX:** o menor dos três, com apenas 170 × 170 mm. Cabe em gabinetes extremamente compactos, mas em geral possui apenas um slot PCIe e dois slots de RAM. A escolha para quem prioriza tamanho acima de qualquer coisa.

## Slots e conectores

### Soquete do processador

O soquete é o ponto de encaixe do processador, e é o que determina quais CPUs a placa aceita. Cada fabricante e cada geração de processadores usa um soquete específico. Os mais comuns hoje são o LGA1700 e o LGA1851 para processadores Intel, e o AM4 e o AM5 para AMD.

Um detalhe relevante sobre o manuseio:

- **Intel:** os pinos ficam na placa-mãe, e o processador tem apenas contatos planos;
- **AMD:** os pinos ficam no processador, a falta de cuidado durante a instalação pode dobrar alguns pinos e danificar.

### Slots de memória

A maioria das placas-mãe tem dois ou quatro slots de RAM. A quantidade de slots define quanto de memória o sistema pode ter no total e se é possível operar em *dual channel*, uma configuração que aumenta a largura de banda da memória ao usar dois pentes simultaneamente em vez de um.

As placas mais modernas usam DDR5, enquanto plataformas mais antigas ainda utilizam DDR4. Os dois padrões são fisicamente incompatíveis: um pente DDR5 não encaixa em um slot DDR4, e vice-versa.

### Slots PCIe

Pense no PCIe como os encaixes da placa-mãe para conectar outras peças no computador. O encaixe maior (x16) é feito sob medida para a placa de vídeo, garantindo a velocidade máxima. Os encaixes menores (x4 e x1) servem para coisas mais simples, como placas de rede, som ou espaço extra de armazenamento.

### Conectores SATA

Apesar da popularidade crescente dos SSDs M.2, os conectores SATA ainda estão presentes na maioria das placas-mãe para quem usa HDs ou SSDs do tipo 2.5". Cada conector SATA alimenta um dispositivo, e a quantidade disponível varia conforme o modelo da placa.

### Slots M.2

Os slots M.2 são conectores compactos usados principalmente para SSDs NVMe. Um slot M.2 no formato físico correto pode operar tanto via PCIe quanto via SATA, dependendo da placa e do SSD. É importante verificar qual protocolo cada slot suporta, porque um SSD NVMe não vai funcionar em sua velocidade máxima em um slot M.2 que opera apenas em SATA.

### Conectores de energia

A placa recebe energia da fonte por meio de dois conectores principais: o conector ATX de 24 pinos, que alimenta a placa em geral, e o conector EPS de 4 ou 8 pinos próximo ao soquete do processador, dedicado à CPU. Sem ambos conectados, o computador não inicia.

## A parte traseira: o painel de I/O

Na parte de trás do gabinete, visível externamente, fica o painel de I/O da placa-mãe. O que está disponível ali varia muito conforme o modelo, mas geralmente inclui:

- Portas USB-A em versões 3.0 ou superiores;
- Uma ou mais portas USB-C, às vezes com suporte a Thunderbolt em placas de alto padrão;
- Saída de vídeo integrada (HDMI ou DisplayPort), presente apenas quando o processador tem GPU integrada;
- Porta de rede RJ-45;
- Entradas e saídas de áudio.

Placas mais recentes frequentemente incluem o painel de I/O já pré-instalado, o que simplifica a montagem e evita um passo extra no processo de encaixar o gabinete.

## VRM: a alimentação do processador

Eles são os circuitos responsáveis por converter a tensão que vem da fonte de alimentação em uma tensão estável e adequada para o processador.

## Conectividade integrada

As placas-mãe modernas tendem a integrar cada vez mais funcionalidades que antes exigiam placas adicionais:

- **Wi-Fi e Bluetooth:** placas intermediárias e de alto padrão frequentemente incluem conectividade sem fio integrada, evitando a necessidade de um adaptador separado.

- **Rede com fio:** praticamente todas as placas incluem ao menos uma porta Ethernet. Modelos de alto desempenho trazem portas de 2,5 Gbps ou até 10 Gbps em vez do padrão de 1 Gbps.

- **Áudio:** o codec de áudio integrado cobre com folga as necessidades da maioria dos usuários. Quem exige qualidade maior para produção musical pode preferir uma placa de som dedicada, mas para uso geral o áudio integrado é mais do que suficiente.

## Placas-mãe de servidor

Uma placa-mãe de servidor não é simplesmente uma versão maior ou mais cara de uma placa para desktop. É um produto projetado com um conjunto de prioridades completamente diferente: estabilidade contínua, confiabilidade dos dados, gerenciamento remoto e, em muitos casos, suporte a mais de um processador no mesmo sistema.

### Suporte a múltiplos processadores

Placas de servidor de médio e grande porte frequentemente têm dois soquetes de processador. Isso permite que dois chips operem em conjunto sobre a mesma memória e os mesmos recursos de I/O, aumentando a capacidade de processamento paralelo sem precisar de dois servidores separados. Essa arquitetura é comum em servidores de banco de dados, virtualização e computação científica.

### Memória ECC

Em desktops, um erro de memória pode causar uma tela azul ou um travamento. Em um servidor de banco de dados ou sistema financeiro, o mesmo erro pode corromper dados silenciosamente. A memória ECC (*Error-Correcting Code*) detecta e corrige automaticamente erros de um único bit antes que cheguem ao processador, sem interromper a operação.

### BMC e IPMI: gerenciamento fora de banda

Uma das diferenças mais marcantes entre placas de servidor e placas de desktop é a presença do BMC (*Baseboard Management Controller*), um microcontrolador independente soldado na placa com seu próprio firmware, sua própria memória e sua própria interface de rede.

O BMC opera de forma completamente autônoma em relação ao sistema principal. Isso significa que um administrador pode se conectar ao servidor e gerenciá-lo mesmo que ele esteja desligado, travado ou sem sistema operacional instalado.

### Form factor de servidor

Placas de servidor seguem padrões de form factor próprios, pensados para instalação em racks, os armários padronizados usados em data centers. Os formatos mais comuns são:

- **EATX:** variação estendida do ATX;
- **EEB:** formato maior, usado em placas dual socket com muitos slots de expansão;
- **Formatos proprietários:** fabricantes como Supermicro e Dell desenvolvem placas com dimensões customizadas.

### Chipsets de servidor

Os chipsets de servidor vêm de linhas diferentes das de desktop. A Intel usa chipsets da série C, como o C621 e o C741, projetados para as plataformas Xeon Scalable. A AMD oferece as plataformas EPYC, com chipsets próprios que suportam um número muito maior de linhas PCIe e canais de memória do que qualquer plataforma de desktop.
