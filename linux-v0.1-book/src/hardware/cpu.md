# Processador (CPU)

CPU significa Unidade Central de Processamento. É um chip de silício, fabricado com transistores em escala nanométrica, capaz de executar bilhões de operações por segundo. Cada operação é simples: somar dois números, comparar valores, mover dados de um lugar para outro. A complexidade emerge da velocidade e da quantidade: bilhões dessas operações simples por segundo produzem tudo o que se vê na tela.

O processador trabalha em ciclos. A cada ciclo, ele busca uma instrução na memória, decodifica o que ela significa, executa a operação correspondente e grava o resultado. Esse fluxo (buscar, decodificar, executar, gravar) é repetido incessantemente, bilhões de vezes por segundo em cada núcleo, a uma frequência medida em gigahertz.

## Frequência e núcleos

Dois parâmetros aparecem sempre nas especificações de qualquer processador: a frequência de clock e o número de núcleos.

A **frequência de clock**, medida em GHz (gigahertz), indica quantos ciclos o processador completa por segundo. Um processador a 4 GHz executa quatro bilhões de ciclos por segundo. Frequência mais alta significa mais operações por segundo, mas apenas quando o trabalho é sequencial, uma instrução dependendo do resultado da anterior.

Os **núcleos** são unidades de processamento independentes dentro do mesmo chip. Um processador com oito núcleos pode executar oito tarefas simultaneamente, cada uma em seu próprio núcleo. Para programas que conseguem dividir o trabalho em partes paralelas, como renderização de vídeo, compilação de código ou simulações científicas, mais núcleos se traduzem diretamente em menos tempo.

A relação entre frequência e núcleos não é simples. Um jogo que depende fortemente de processamento sequencial se beneficia mais de frequência alta. Uma aplicação que distribui carga por múltiplas threads se beneficia de mais núcleos. Os processadores modernos tentam equilibrar os dois, mas as prioridades variam conforme o design.

### Núcleos de eficiência e núcleos de desempenho

Algumas arquiteturas modernas adotam um design híbrido: núcleos de alto desempenho convivem com núcleos de alta eficiência no mesmo chip. Os núcleos de desempenho são mais rápidos e potentes, mas consomem mais energia. Os de eficiência fazem menos por ciclo, mas consomem muito pouco.

O sistema operacional distribui as tarefas conforme a demanda: tarefas em segundo plano e processos simples vão para os núcleos de eficiência; jogos e aplicações pesadas são direcionados aos núcleos de desempenho. O resultado é um equilíbrio entre performance máxima quando necessário e economia de energia no uso cotidiano.

## Cache

A memória RAM é rápida, mas o processador é ainda mais rápido. Se a cada instrução o processador precisasse buscar dados na RAM, ficaria a maior parte do tempo esperando. O cache resolve esse problema.

O cache é uma memória embutida diretamente no chip do processador, extremamente rápida e com latência mínima. Quando o processador acessa um dado, ele guarda uma cópia no cache. Se precisar do mesmo dado novamente em breve, encontra-o ali, sem precisar ir até a RAM.

O cache é organizado em níveis:

- **L1:** o menor e mais rápido, dedicado a cada núcleo individualmente. Capacidade típica de dezenas de kilobytes por núcleo;

- **L2:** maior e um pouco mais lento, ainda exclusivo por núcleo na maioria das arquiteturas. Capacidade na casa dos megabytes;

- **L3:** compartilhado entre todos os núcleos do processador. Muito maior, podendo chegar a dezenas de megabytes, mas com latência maior que os anteriores.

## TDP e consumo de energia

Todo processador tem um **TDP** (*Thermal Design Power*), que expressa quanto calor o componente dissipa sob carga típica, medido em watts. É o parâmetro que orienta a escolha do sistema de resfriamento: um processador com TDP de 65 W precisa de um cooler diferente de um com TDP de 125 W.

Processadores para desktops têm TDPs mais altos porque operam conectados à tomada e com espaço para dissipadores maiores. Processadores para notebooks precisam operar com TDPs muito menores, frequentemente entre 15 W e 45 W, para preservar a bateria e caber em designs finos. 

## Fabricantes e arquiteturas

Vale entender primeiro uma distinção importante: **arquitetura** e **fabricante** não são a mesma coisa. A arquitetura define o conjunto de instruções que o processador entende, isto é, a linguagem que ele fala. O fabricante é quem projeta e produz o chip. Dois processadores de fabricantes diferentes podem compartilhar a mesma arquitetura; dois processadores do mesmo fabricante podem ter arquiteturas distintas.

As duas arquiteturas dominantes hoje são **x86** e **ARM**, e elas não são intercambiáveis: um programa compilado para x86 não roda nativamente em ARM sem emulação ou tradução, e vice-versa.

### x86: desktops, notebooks e servidores tradicionais

A arquitetura x86 domina computadores pessoais e servidores há décadas. É o padrão para a maioria dos softwares de desktop e jogos. Dois fabricantes disputam esse mercado:

- **Intel:** pioneira da arquitetura x86 e dominante no setor por décadas. Seus processadores para uso geral seguem a nomenclatura Core, dividida em faixas de desempenho:

  - **Core i3:** entrada, tarefas cotidianas;
  - **Core i5:** intermediário, uso geral e jogos;
  - **Core i7:** alto desempenho, produtividade pesada;
  - **Core i9:** topo de linha para desktops, *workstations* e notebooks premium.

- **AMD:** também fabrica processadores x86 e recuperou competitividade significativa a partir de 2017 com a arquitetura Zen. Suas linhas principais são:

  - **Ryzen 3, 5, 7, 9:** equivalentes às faixas da Intel em termos de posicionamento, conhecidos por oferecer alta contagem de núcleos a preços competitivos;
  - **Threadripper:** voltado a estações de trabalho profissionais e servidores, com contagens de núcleos muito acima do comum.

### ARM: dispositivos móveis e eficiência energética

A arquitetura ARM foi projetada desde o início para consumo de energia mínimo, o que a torna dominante em celulares, tablets e dispositivos embarcados. A diferença fundamental em relação ao x86 é de filosofia: ARM faz menos por instrução, mas de forma muito mais eficiente em termos energéticos.

Aqui, a **ARM** (a empresa) não fabrica chips diretamente: ela licencia a arquitetura para outros fabricantes, que desenvolvem seus próprios designs:

- **Apple Silicon (M1, M2, M3, M4):** processadores ARM desenvolvidos pela própria Apple para seus Macs e iPads. Demonstraram que eficiência energética e alto desempenho não são excludentes, superando em vários cenários processadores x86 tradicionais;

- **Qualcomm Snapdragon:** presente na maioria dos smartphones Android de alto desempenho e em alguns notebooks Windows;

- **Chips em smartphones e tablets em geral:** praticamente todos os dispositivos móveis modernos usam alguma variante de ARM, independentemente da marca.

### Processadores para servidores

Servidores têm exigências diferentes de desktops e notebooks. Não se trata apenas de mais desempenho: servidores precisam operar continuamente por anos, lidar com dezenas ou centenas de tarefas simultâneas, suportar grandes volumes de memória RAM e, em muitos casos, funcionar em pares para garantir disponibilidade mesmo em caso de falha de hardware. 

As linhas específicas para servidores dos principais fabricantes são:

- **Intel Xeon:** linha da Intel para servidores. Suporta multiprocessamento (várias CPUs na mesma placa), memória ECC (corrige erros de bit automaticamente) e capacidade de RAM que ultrapassa facilmente os limites usuais de um desktop comum;

- **AMD EPYC:** resposta da AMD ao Xeon, baseada na arquitetura Zen (mesma dos Ryzen). Modelos recentes já ultrapassam a marca de cem núcleos, um número que cresce a cada nova geração, também com ECC e multiprocessamento. É referência em cargas paralelas intensas, como computação científica e virtualização;

- **ARM em data centers:** alternativa mais recente ao domínio x86. O AWS Graviton (Amazon) e a Ampere Altra (usada por Google Cloud e Azure) se destacam pela melhor relação desempenho/consumo de energia, reduzindo custo operacional. A limitação é a compatibilidade: softwares feitos só para x86 precisam ser recompilados ou emulados para rodar em ARM.

## O soquete e a compatibilidade com a placa-mãe

Além da compatibilidade com software, o processador precisa ser fisicamente compatível com a placa-mãe. Soquetes de fabricantes diferentes são fisicamente incompatíveis entre si: um processador AMD não cabe em uma placa Intel, e vice-versa. 

### O que define a compatibilidade

Dois fatores determinam se um processador funciona em uma placa-mãe:

- **Soquete físico:** precisa ser idêntico. Tentar encaixar um processador no soquete errado é impossível sem força, e forçar danifica ambos;

- **Chipset da placa-mãe:** mesmo com o soquete correto, nem toda placa suporta todos os processadores daquele soquete e cada chipset tem uma lista oficial de processadores suportados.. 

### Compatibilidade entre gerações

A política de compatibilidade entre gerações varia bastante entre os fabricantes:

- **AMD:** manteve o soquete AM4 por cinco anos e múltiplas gerações de processadores Ryzen, do Ryzen 1000 ao Ryzen 5000. Isso significou que era possível trocar um processador de geração mais antiga por um mais novo na mesma placa, com ou sem atualização de firmware, dependendo do chipset.

- **Intel:** historicamente troca de soquete com mais frequência, às vezes a cada uma ou duas gerações. Isso significa que trocar de processador Intel frequentemente implica trocar também a placa-mãe.

### A armadilha do firmware

Mesmo quando o soquete é compatível, há um detalhe que pega muitos usuários de surpresa: ao combinar uma placa-mãe mais antiga com um processador mais novo, o firmware da placa pode precisar de atualização para reconhecer o novo chip. Uma placa com soquete AM5, por exemplo, pode não inicializar com um Ryzen de geração mais recente se o firmware estiver desatualizado.

## Tempo de vida de um processador

Processadores são um dos componentes mais duráveis de um computador. Diferente de discos mecânicos, que têm partes em movimento sujeitas a desgaste, ou de baterias, que degradam quimicamente com o uso, um processador não tem partes móveis e não se desgasta da mesma forma. Na prática, é comum ver Xeons de dez ou quinze anos rodando 24 horas por dia, sete dias por semana, sem falhas, e isso não é exceção, é o esperado para esse segmento.

### Obsolescência de software

A durabilidade física, porém, não é o único limite. Um Xeon de 2010 pode estar eletricamente perfeito hoje e ainda assim ser inutilizável para certas tarefas, não porque o hardware falhou, mas porque o software parou de suportá-lo.

Esse processo acontece em camadas:

- **Sistema operacional:** o Windows 11, por exemplo, exige requisitos de firmware como TPM 2.0 e Secure Boot, além de uma lista restrita de CPUs suportadas pela Microsoft, bloqueando a instalação mesmo em hardware funcionando perfeitamente. O Linux é mais permissivo nesse aspecto, permitindo rodar versões recentes do kernel em hardware mais antigo por mais tempo;

- **Instruções de hardware:** novas gerações trazem conjuntos como AVX, AVX2 e AVX-512, que aceleram tarefas como criptografia e cálculos científicos, softwares compilados para usá-las não funcionam em CPUs sem esse suporte;

- **Suporte do fabricante:** Intel e AMD param de lançar correções de microcódigo para arquiteturas antigas. O processador continua funcionando, mas fica vulnerável a falhas sem correção oficial.

### Suporte a drivers e hardware

O driver é o software que permite ao sistema operacional conversar com um componente de hardware. Processadores muito novos, ou plataformas de nicho, às vezes chegam ao mercado antes de os sistemas operacionais terem suporte completo.

No Linux, esse fenômeno é mais visível. O suporte a novos processadores e chipsets depende de contribuições ao kernel, que seguem um ciclo de lançamento próprio. Um processador lançado hoje pode ter suporte completo no kernel apenas meses depois. Distribuições que seguem o kernel de perto, como o Arch Linux ou o Fedora, tendem a receber esse suporte antes de distribuições mais conservadoras, como o Debian estável.

No Windows, a Microsoft e os fabricantes de processadores costumam coordenar o lançamento de drivers com o lançamento do hardware, tornando o processo mais transparente para o usuário final. O problema aparece mais em hardware corporativo antigo ou em processadores de nicho sem suporte ativo do fabricante.
