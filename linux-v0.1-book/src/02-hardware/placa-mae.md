# Placa-mãe

Ela não processa, não armazena e não exibe: ela conecta. A placa-mãe é uma placa de circuito impresso que ocupa a maior parte do interior de qualquer computador, nela estão soldados ou conectados praticamente todos os componentes que fazem a máquina funcionar. Além de conectar fisicamente, a placa-mãe gerencia a comunicação entre os componentes.

## Chipset

Dentro da placa-mãe há um conjunto de circuitos chamado chipset. Ele funciona como um intermediário entre o processador e os demais componentes, gerenciando conexões que não saem diretamente da CPU: portas USB, conectores SATA, slots PCIe adicionais e outras interfaces.

Processadores modernos integram parte das funções que antes eram exclusivas do chipset, como o controlador de memória e algumas linhas PCIe diretas. O que o chipset ainda gerencia varia conforme a plataforma, mas o princípio se mantém: ele complementa o processador em tudo que não passa diretamente por ele.

A escolha do chipset define em grande parte o que a placa-mãe suporta. Chipsets de linha mais alta permitem *overclocking*, oferecem mais linhas PCIe e mais portas USB. Chipsets de entrada restringem algumas dessas opções para reduzir custo. 

## Tamanho

Placa-mãe não vem em um tamanho só. O *form factor* define as dimensões físicas da placa, a disposição dos furos de fixação e, consequentemente, quais gabinetes a aceitam. Os três formatos mais comuns no mercado atual são:

- **ATX:** o formato padrão para desktops. Mede 305 × 244 mm e oferece o maior número de slots e conectores. É a escolha natural para montagens sem restrições de espaço.

- **Micro-ATX:** menor que o ATX, com 244 × 244 mm. Cabe em gabinetes menores e ainda oferece slots suficientes para a maioria dos usos. É um equilíbrio comum entre tamanho e capacidade de expansão.

- **Mini-ITX:** o menor dos três, com apenas 170 × 170 mm. Cabe em gabinetes extremamente compactos, mas em geral possui apenas um slot PCIe e dois slots de RAM. A escolha para quem prioriza tamanho acima de qualquer coisa.

A escolha do *form factor* delimita não apenas o gabinete, mas toda a montagem. Uma placa Mini-ITX em um gabinete compacto pode dificultar a refrigeração e limitar a expansão futura. Uma ATX em um gabinete grande oferece mais espaço mas ocupa mais mesa ou chão.

## Slots e conectores

### Soquete do processador

O soquete é o ponto de encaixe do processador, e é o que determina quais CPUs a placa aceita. Cada fabricante e cada geração de processadores usa um soquete específico. Os mais comuns hoje são o LGA1700 e o LGA1851 para processadores Intel, e o AM4 e o AM5 para AMD.

Um detalhe relevante sobre o manuseio:

- **Intel:** os pinos ficam na placa-mãe, e o processador tem apenas contatos planos;
- **AMD:** os pinos ficam no processador, a falta de cuidado durante a instalação pode dobrar alguns pinos e danificar.

### Slots de memória

A maioria das placas-mãe tem dois ou quatro slots de RAM. A quantidade de slots define quanto de memória o sistema pode ter no total e se é possível operar em *dual channel*, uma configuração que aumenta a largura de banda da memória ao usar dois pentes simultaneamente em vez de um.

As placas mais modernas usam DDR5, enquanto plataformas mais antigas ainda utilizam DDR4. Os dois padrões são fisicamente incompatíveis: um pente DDR5 não encaixa em um slot DDR4, e vice-versa.

#### Gerações de DDR e o encaixe na placa-mãe

Cada geração de DDR tem um encaixe físico diferente. O pente muda de tamanho, a posição do entalhe que guia a instalação muda, e o slot da placa-mãe muda junto. Isso torna impossível instalar uma geração errada por acidente: um pente DDR5 simplesmente não entra em um slot DDR4, e vice-versa.

- **DDR1:** 184 pinos;
- **DDR2:** 240 pinos;
- **DDR3:** 240 pinos;
- **DDR4:** 288 pinos;
- **DDR5:** 288 pinos;

#### Dual channel

Quando dois pentes de RAM idênticos são instalados nos slots corretos, a placa-mãe ativa o modo *dual channel*, que dobra a largura de banda disponível para o processador ao acessar a memória. A diferença é perceptível especialmente em processadores com GPU integrada, que compartilham a memória RAM com os gráficos, e em tarefas que movimentam grandes volumes de dados entre CPU e memória.

Os slots de *dual channel* na placa são identificados por cores: instalar os pentes nos dois slots da mesma cor ativa o modo. O manual da placa sempre indica a combinação correta.

### Slots PCIe

Pense no PCIe como os encaixes da placa-mãe para conectar outras peças no computador. O encaixe maior (x16) é feito sob medida para a placa de vídeo, garantindo a velocidade máxima. Os encaixes menores (x4 e x1) servem para coisas mais simples, como placas de rede, som ou espaço extra de armazenamento.

### Slots M.2

Os slots M.2 são conectores compactos usados principalmente para SSDs NVMe. Um slot M.2 no formato físico correto pode operar tanto via PCIe quanto via SATA, dependendo da placa e do SSD. É importante verificar qual protocolo cada slot suporta, porque um SSD NVMe não vai funcionar em sua velocidade máxima em um slot M.2 que opera apenas em SATA.

### Conectores SATA

Apesar da popularidade crescente dos SSDs M.2, os conectores SATA ainda estão presentes na maioria das placas-mãe para quem usa HDs ou SSDs do tipo 2.5". Cada conector SATA alimenta um dispositivo, e a quantidade disponível varia conforme o modelo da placa.

### Conectores de energia

A placa recebe energia da fonte por meio de dois conectores principais: o conector ATX de 24 pinos, que alimenta a placa em geral, e o conector EPS de 4 ou 8 pinos próximo ao soquete do processador, dedicado à CPU. Sem ambos conectados, o computador não inicia.

## A parte traseira: o painel de I/O

Na parte de trás do gabinete, visível externamente, fica o painel de I/O da placa-mãe: o conjunto de portas que conecta o computador ao mundo externo. O que está disponível ali varia muito conforme o modelo, mas geralmente inclui:

- Portas USB-A em versões 3.0 ou superiores;
- Uma ou mais portas USB-C, às vezes com suporte a Thunderbolt em placas de alto padrão;
- Saída de vídeo integrada (HDMI ou DisplayPort), presente apenas quando o processador tem GPU integrada;
- Porta de rede RJ-45;
- Entradas e saídas de áudio.

Placas mais recentes frequentemente incluem o painel de I/O já pré-instalado, o que simplifica a montagem e evita um passo extra no processo de encaixar o gabinete.

## VRM: a alimentação do processador

Entre os componentes da placa-mãe que menos aparecem nas especificações de marketing e mais importam no desempenho real estão os VRMs (*Voltage Regulator Modules*). Eles são os circuitos responsáveis por converter a tensão que vem da fonte de alimentação em uma tensão estável e adequada para o processador.

O processador não consome energia de forma constante. Em momentos de carga intensa, a demanda sobe abruptamente. VRMs de qualidade inferior esquentam mais, são menos eficientes e, em casos extremos, limitam o desempenho do processador ao não conseguir entregar energia suficiente de forma estável.

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

O BMC opera de forma completamente autônoma em relação ao sistema principal. Isso significa que um administrador pode se conectar ao servidor e gerenciá-lo mesmo que ele esteja desligado, travado ou sem sistema operacional instalado. Essa capacidade é chamada de gerenciamento fora de banda, e o protocolo que a padroniza entre fabricantes é o IPMI (Intelligent Platform Management Interface).

Na prática, pelo IPMI é possível:

- Ligar, desligar e reiniciar o servidor remotamente;
- Acessar o console do sistema como se estivesse fisicamente presente (KVM over IP);
- Monitorar temperaturas, tensões e velocidade de ventoinhas em tempo real;
- Receber alertas automáticos quando algum sensor ultrapassa o limite configurado;
- Atualizar o firmware de componentes sem acesso físico à máquina.

### Form factor de servidor

Placas de servidor seguem padrões de form factor próprios, pensados para instalação em racks, os armários padronizados usados em data centers. Os formatos mais comuns são:

- **EATX:** variação estendida do ATX;
- **EEB:** formato maior, usado em placas dual socket com muitos slots de expansão;
- **Formatos proprietários:** fabricantes como Supermicro e Dell desenvolvem placas com dimensões customizadas.

### Chipsets de servidor

Os chipsets de servidor vêm de linhas diferentes das de desktop. A Intel usa chipsets da série C, como o C621 e o C741, projetados para as plataformas Xeon Scalable. A AMD oferece as plataformas EPYC, com chipsets próprios que suportam um número muito maior de linhas PCIe e canais de memória do que qualquer plataforma de desktop.

### Confiabilidade como projeto

Placas de servidor são validadas para operação contínua 24 horas por dia, 7 dias por semana, durante anos. Isso se reflete nos componentes usados, nos ciclos de teste antes do lançamento e no suporte de longo prazo que os fabricantes oferecem. Um modelo de servidor pode receber atualizações de firmware por cinco a dez anos após o lançamento, algo incomum no mercado de desktops.
