# Placa-mãe

Se o processador é o componente que calcula, e o armazenamento é onde os dados vivem, a placa-mãe é o que faz todos esses componentes existirem juntos como um sistema. Ela não processa, não armazena, não exibe. Ela conecta. É o substrato físico e elétrico sobre o qual tudo o mais opera, a estrutura que transforma peças separadas em um computador.

## O que é a placa-mãe?

A placa-mãe é uma placa de circuito impresso que ocupa a maior parte do interior de qualquer computador. Nela estão soldados ou conectados praticamente todos os componentes que fazem a máquina funcionar: o processador senta em seu soquete, os pentes de RAM encaixam em seus slots, o SSD ou HD se conecta por meio de um conector SATA ou diretamente em um slot M.2, e a GPU ocupa um slot PCIe. A fonte de alimentação entrega energia à placa, e ela distribui essa energia para cada componente conforme a necessidade.

Além de conectar fisicamente, a placa-mãe gerencia a comunicação entre os componentes. Quando o processador precisa de dados que estão na RAM, é a placa-mãe que fornece os caminhos elétricos por onde esses dados trafegam. Quando um SSD NVMe precisa conversar diretamente com a CPU pelo barramento PCIe, é a placa que viabiliza esse canal.

## O chipset

Dentro da placa-mãe há um conjunto de circuitos chamado chipset. Ele funciona como um intermediário entre o processador e os demais componentes, gerenciando conexões que não saem diretamente da CPU: portas USB, conectores SATA, slots PCIe adicionais e outras interfaces.

Processadores modernos integram parte das funções que antes eram exclusivas do chipset, como o controlador de memória e algumas linhas PCIe diretas. O que o chipset ainda gerencia varia conforme a plataforma, mas o princípio se mantém: ele complementa o processador em tudo que não passa diretamente por ele.

A escolha do chipset define em grande parte o que a placa-mãe suporta. Chipsets de linha mais alta permitem overclocking, oferecem mais linhas PCIe e mais portas USB. Chipsets de entrada restringem algumas dessas opções para reduzir custo. Para o usuário final, a escolha prática é sempre entre a placa e o conjunto de recursos que ela oferece, não o chipset em si.

## Form factor: o tamanho importa

Placa-mãe não vem em um tamanho só. O *form factor* define as dimensões físicas da placa, a disposição dos furos de fixação e, consequentemente, quais gabinetes a aceitam. Os três formatos mais comuns no mercado atual são:

- **ATX:** o formato padrão para desktops. Mede 305 × 244 mm e oferece o maior número de slots e conectores. É a escolha natural para montagens sem restrições de espaço.

- **Micro-ATX:** menor que o ATX, com 244 × 244 mm. Cabe em gabinetes menores e ainda oferece slots suficientes para a maioria dos usos. É um equilíbrio comum entre tamanho e capacidade de expansão.

- **Mini-ITX:** o menor dos três, com apenas 170 × 170 mm. Cabe em gabinetes extremamente compactos, mas em geral possui apenas um slot PCIe e dois slots de RAM. A escolha para quem prioriza tamanho acima de qualquer coisa.

A escolha do form factor delimita não apenas o gabinete, mas toda a montagem. Uma placa Mini-ITX em um gabinete compacto pode dificultar a refrigeração e limitar a expansão futura. Uma ATX em um gabinete grande oferece mais espaço mas ocupa mais mesa ou chão.

## Slots e conectores

A placa-mãe é, em grande parte, definida pelo que ela oferece para conectar. Os principais elementos são:

### Soquete do processador

O soquete é o ponto de encaixe do processador, e é o que determina quais CPUs a placa aceita. Cada fabricante e cada geração de processadores usa um soquete específico. Os mais comuns hoje são o LGA1700 e o LGA1851 para processadores Intel, e o AM4 e o AM5 para AMD.

Um detalhe relevante sobre o manuseio:

- **Intel:** os pinos ficam na placa-mãe, e o processador tem apenas contatos planos.
- **AMD:** os pinos ficam no processador. Pinos dobrados são um problema que pode inutilizar o chip.

### Slots de memória

A maioria das placas-mãe tem dois ou quatro slots de RAM. A quantidade de slots define quanto de memória o sistema pode ter no total e se é possível operar em dual channel, uma configuração que aumenta a largura de banda da memória ao usar dois pentes simultaneamente em vez de um.

As placas mais modernas usam DDR5, enquanto plataformas mais antigas ainda utilizam DDR4. Os dois padrões são fisicamente incompatíveis: um pente DDR5 não encaixa em um slot DDR4, e vice-versa.

#### Gerações de DDR e o encaixe na placa-mãe

Cada geração de DDR tem um encaixe físico diferente. O pente muda de tamanho, a posição do entalhe que guia a instalação muda, e o slot da placa-mãe muda junto. Isso torna impossível instalar uma geração errada por acidente: um pente DDR5 simplesmente não entra em um slot DDR4, e vice-versa.

- **DDR1:** 184 pinos, entalhe próximo ao centro do pente, levemente deslocado para um lado.
- **DDR2:** 240 pinos, entalhe reposicionado em relação ao DDR1. Mesmo número de pinos que o DDR3, mas em posição diferente, o que impede a troca entre os dois.
- **DDR3:** 240 pinos, entalhe em posição distinta do DDR2. Presente em plataformas mais antigas que ainda circulam no mercado usado.
- **DDR4:** 288 pinos, entalhe deslocado novamente. É o padrão mais encontrado em máquinas em uso hoje.
- **DDR5:** 288 pinos, mesmo número que o DDR4, mas com o entalhe em posição diferente e altura do conector ligeiramente maior. Incompatível com slots DDR4 apesar da semelhança visual.

#### Dual channel e quad channel

Quando dois pentes de RAM idênticos são instalados nos slots corretos, a placa-mãe ativa o modo dual channel, que dobra a largura de banda disponível para o processador ao acessar a memória. A diferença é perceptível especialmente em processadores com GPU integrada, que compartilham a memória RAM com os gráficos, e em tarefas que movimentam grandes volumes de dados entre CPU e memória.

Os slots de dual channel na placa são identificados por cores: instalar os pentes nos dois slots da mesma cor ativa o modo. O manual da placa sempre indica a combinação correta.

Placas de servidor com múltiplos processadores podem operar em quad channel ou até oito canais, aumentando ainda mais a largura de banda total disponível.

#### Velocidade e latência

Dois números aparecem sempre nas especificações de memória: a frequência, em MHz, e a latência CL, que indica quantos ciclos o módulo leva para responder a uma solicitação. Um módulo DDR5-6000 CL30 e um DDR5-6000 CL36 operam na mesma frequência, mas o primeiro responde mais rápido por ter latência menor.

Na prática, para uso geral, a diferença entre frequências e latências próximas é pequena. O ganho real aparece em cenários específicos: edição de vídeo, compilação de código, simulações e, novamente, GPUs integradas, que dependem diretamente da velocidade da RAM para renderizar.

#### Como a RAM aparece na placa-mãe

Os slots de memória ficam sempre próximos ao soquete do processador, já que o controlador de memória está dentro da própria CPU nas arquiteturas modernas. Quanto menor a distância entre os dois, menor a latência das trilhas que os conectam.

Nas placas com quatro slots, a ordem de instalação importa. Instalar um único pente no slot errado pode impedir o dual channel ou, em alguns casos, fazer o sistema não inicializar. A regra geral é: dois pentes vão nos slots 2 e 4 (ou A2 e B2, conforme a nomenclatura da placa). O manual sempre especifica, e a placa costuma ter a indicação impressa na própria PCB ao lado dos slots.

### Slots PCIe

O *PCIe* (Peripheral Component Interconnect Express) é o barramento de alta velocidade da placa-mãe. É por ele que a GPU se conecta, geralmente em um slot PCIe x16, o maior e mais rápido. Outros slots menores, PCIe x4 ou x1, servem para placas de rede, captura de vídeo, SSDs adicionais e outros dispositivos.

A versão do PCIe importa: o PCIe 5.0, presente em plataformas mais recentes, oferece o dobro da largura de banda do PCIe 4.0. Na prática, para a maioria dos usos hoje, a versão ainda não é um gargalo visível, mas em SSDs NVMe de última geração a diferença começa a aparecer.

### Slots M.2

Os slots M.2 são conectores compactos usados principalmente para SSDs NVMe. Um slot M.2 no formato físico correto pode operar tanto via PCIe quanto via SATA, dependendo da placa e do SSD. É importante verificar qual protocolo cada slot suporta, porque um SSD NVMe não vai funcionar em sua velocidade máxima em um slot M.2 que opera apenas em SATA.

Placas de entrada costumam ter um ou dois slots M.2. Modelos de alto desempenho podem ter quatro ou mais.

### Conectores SATA

Apesar da popularidade crescente dos SSDs M.2, os conectores SATA ainda estão presentes na maioria das placas-mãe para quem usa HDs ou SSDs do tipo 2.5". Cada conector SATA alimenta um dispositivo, e a quantidade disponível varia conforme o modelo da placa.

### Conectores de energia

A placa recebe energia da fonte por meio de dois conectores principais: o conector ATX de 24 pinos, que alimenta a placa em geral, e o conector EPS de 4 ou 8 pinos próximo ao soquete do processador, dedicado à CPU. Sem ambos conectados, o computador não inicia.

## A parte traseira: o painel de I/O

Na parte de trás do gabinete, visível externamente, fica o painel de I/O da placa-mãe: o conjunto de portas que conecta o computador ao mundo externo. O que está disponível ali varia muito conforme o modelo, mas geralmente inclui:

- Portas USB-A em versões 3.0 ou superiores
- Uma ou mais portas USB-C, às vezes com suporte a Thunderbolt em placas de alto padrão
- Saída de vídeo integrada (HDMI ou DisplayPort), presente apenas quando o processador tem GPU integrada
- Porta de rede RJ-45
- Entradas e saídas de áudio

Placas mais recentes frequentemente incluem o painel de I/O já pré-instalado, o que simplifica a montagem e evita um passo extra no processo de encaixar o gabinete.

## VRM: a alimentação do processador

Entre os componentes da placa-mãe que menos aparecem nas especificações de marketing e mais importam no desempenho real estão os VRMs, *Voltage Regulator Modules*. Eles são os circuitos responsáveis por converter a tensão que vem da fonte de alimentação em uma tensão estável e adequada para o processador.

O processador não consome energia de forma constante. Em momentos de carga intensa, a demanda sobe abruptamente. VRMs de qualidade inferior esquentam mais, são menos eficientes e, em casos extremos, limitam o desempenho do processador ao não conseguir entregar energia suficiente de forma estável.

Em montagens simples com processadores de consumo moderado, VRMs medianos cumprem seu papel sem dificuldade. O problema aparece quando processadores de alto TDP, especialmente os que permitem overclocking, são instalados em placas com VRMs subdimensionados para aquela carga.

## Conectividade integrada

As placas-mãe modernas tendem a integrar cada vez mais funcionalidades que antes exigiam placas adicionais:

- **Wi-Fi e Bluetooth:** placas intermediárias e de alto padrão frequentemente incluem conectividade sem fio integrada, evitando a necessidade de um adaptador separado.

- **Rede com fio:** praticamente todas as placas incluem ao menos uma porta Ethernet. Modelos de alto desempenho trazem portas de 2,5 Gbps ou até 10 Gbps em vez do padrão de 1 Gbps.

- **Áudio:** o codec de áudio integrado cobre com folga as necessidades da maioria dos usuários. Quem exige qualidade maior para produção musical ou audiofilia pode preferir uma placa de som dedicada, mas para uso geral o áudio integrado é mais do que suficiente.

## Placas-mãe de servidor

Uma placa-mãe de servidor não é simplesmente uma versão maior ou mais cara de uma placa para desktop. É um produto projetado com um conjunto de prioridades completamente diferente: estabilidade contínua, confiabilidade dos dados, gerenciamento remoto e, em muitos casos, suporte a mais de um processador no mesmo sistema.

### Suporte a múltiplos processadores

Placas de servidor de médio e grande porte frequentemente têm dois soquetes de processador. Isso permite que dois chips operem em conjunto sobre a mesma memória e os mesmos recursos de I/O, aumentando a capacidade de processamento paralelo sem precisar de dois servidores separados. Essa arquitetura é comum em servidores de banco de dados, virtualização e computação científica.

### Memória ECC

Em desktops, um erro de memória pode causar uma tela azul ou um travamento. Em um servidor de banco de dados ou sistema financeiro, o mesmo erro pode corromper dados silenciosamente. A memória ECC (Error-Correcting Code) detecta e corrige automaticamente erros de um único bit antes que cheguem ao processador, sem interromper a operação.

Placas de servidor são projetadas para usar exclusivamente memória ECC. Além disso, suportam módulos do tipo RDIMM (Registered DIMM) e LRDIMM (Load-Reduced DIMM), que permitem instalar volumes de memória muito maiores do que os suportados por plataformas de desktop, chegando a terabytes em configurações de alto desempenho.

### BMC e IPMI: gerenciamento fora de banda

Uma das diferenças mais marcantes entre placas de servidor e placas de desktop é a presença do BMC (Baseboard Management Controller), um microcontrolador independente soldado na placa com seu próprio firmware, sua própria memória e sua própria interface de rede.

O BMC opera de forma completamente autônoma em relação ao sistema principal. Isso significa que um administrador pode se conectar ao servidor e gerenciá-lo mesmo que ele esteja desligado, travado ou sem sistema operacional instalado. Essa capacidade é chamada de gerenciamento fora de banda, e o protocolo que a padroniza entre fabricantes é o IPMI (Intelligent Platform Management Interface).

Na prática, pelo IPMI é possível:

- Ligar, desligar e reiniciar o servidor remotamente
- Acessar o console do sistema como se estivesse fisicamente presente (KVM over IP)
- Monitorar temperaturas, tensões e velocidade de ventoinhas em tempo real
- Receber alertas automáticos quando algum sensor ultrapassa o limite configurado
- Atualizar o firmware de componentes sem acesso físico à máquina

Cada fabricante implementa o BMC sob um nome próprio: a Dell chama de iDRAC, a HPE de iLO, a Lenovo de XClarity. O protocolo IPMI por baixo é o mesmo, mas as interfaces e recursos adicionais variam.

### Form factor de servidor

Placas de servidor seguem padrões de form factor próprios, pensados para instalação em racks, os armários padronizados usados em data centers. Os formatos mais comuns são:

- **EATX:** variação estendida do ATX, comum em servidores tower e workstations de alto desempenho.
- **EEB (Extended E-ATX):** formato maior, usado em placas dual socket com muitos slots de expansão.
- **Formatos proprietários:** fabricantes como Supermicro e Dell desenvolvem placas com dimensões customizadas para caber exatamente em seus próprios chassis de rack.

### Chipsets de servidor

Os chipsets de servidor vêm de linhas diferentes das de desktop. A Intel usa chipsets da série C, como o C621 e o C741, projetados para as plataformas Xeon Scalable. A AMD oferece as plataformas EPYC, com chipsets próprios que suportam um número muito maior de linhas PCIe e canais de memória do que qualquer plataforma de desktop. A quantidade de linhas PCIe em um servidor de alto desempenho pode passar de cem, o que permite conectar dezenas de SSDs NVMe, GPUs e placas de rede de alta velocidade simultaneamente.

### Confiabilidade como projeto

Placas de servidor são validadas para operação contínua 24 horas por dia, 7 dias por semana, durante anos. Isso se reflete nos componentes usados, nos ciclos de teste antes do lançamento e no suporte de longo prazo que os fabricantes oferecem. Um modelo de servidor pode receber atualizações de firmware por cinco a dez anos após o lançamento, algo incomum no mercado de desktops.
