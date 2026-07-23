# Sistema de Janelas

Antes que qualquer elemento gráfico apareça na tela, algo precisa decidir onde cada janela fica, como o mouse e o teclado se comunicam com os programas e como as imagens chegam até a placa de vídeo. Esse "algo" é o **protocolo de exibição gráfica**, e no Linux os dois protocolos mais relevantes são o X11 e o Wayland.

## O que é um protocolo de exibição

Um protocolo de exibição define as regras de comunicação entre os aplicativos gráficos e o hardware de vídeo. Ele é responsável por desenhar janelas, capturar eventos de entrada (cliques, toques de teclado) e entregar tudo isso de forma organizada na tela. Sem esse intermediário, cada aplicativo teria que conversar diretamente com a placa de vídeo, algo inviável e inseguro.

## X11

O **X11** (X Window System) é o protocolo de exibição mais antigo ainda em uso no Linux. Sua arquitetura é dividida em duas partes:

- **Servidor X:** o processo que efetivamente controla o hardware, desenha na tela e recebe eventos de entrada;
- **Cliente X:** cada aplicativo gráfico que solicita ao servidor a renderização de suas janelas.

Essa separação permite algo pouco comum: um cliente pode rodar em uma máquina e o servidor X em outra, exibindo a interface gráfica remotamente pela rede. Foi um recurso valioso nas décadas em que o X11 foi criado, quando terminais gráficos remotos eram comuns em ambientes corporativos e acadêmicos.

Com o tempo, no entanto, essa arquitetura em camadas passou a ser vista como uma limitação. Cada clique de mouse ou tecla precisa passar por várias etapas intermediárias antes de chegar ao aplicativo, o que gera latência. Além disso, o modelo de segurança do X11 é permissivo: qualquer cliente conectado ao servidor pode, em teoria, capturar o que outro cliente está desenhando na tela, o que dificulta o isolamento entre aplicativos.

## Wayland

O **Wayland** nasceu como uma tentativa de repensar esse modelo do zero, eliminando camadas desnecessárias. Diferente do X11, no Wayland o **compositor** (o programa que organiza as janelas na tela) e o servidor de exibição são a mesma coisa. O aplicativo desenha diretamente em um buffer de memória, e o compositor apenas exibe esse conteúdo, sem etapas intermediárias de repasse.

Essa simplificação traz benefícios diretos:

- **Menor latência:** menos camadas entre o clique do usuário e a resposta na tela;
- **Isolamento de segurança:** um aplicativo não tem acesso automático ao que outros aplicativos estão desenhando, o que reduz riscos de captura indevida de tela ou de entrada;
- **Renderização mais previsível:** cada janela é responsável por seu próprio desenho, reduzindo problemas de sincronização visual (como o rasgamento de tela, conhecido como *tearing*).

Em contrapartida, o Wayland exige que cada compositor implemente funcionalidades que antes eram centralizadas no servidor X, como o compartilhamento remoto de tela. Isso fez com que, por um período, alguns recursos antigos e específicos do X11 ainda não tivessem equivalente direto em todas as implementações Wayland, embora esse cenário venha evoluindo constantemente.

## Convivência entre os dois

Grande parte das distribuições Linux atuais já utiliza o Wayland como padrão, mas mantém suporte ao X11 por compatibilidade. Isso é possível graças a uma camada de compatibilidade chamada **XWayland**, que permite que aplicativos escritos exclusivamente para X11 continuem funcionando normalmente dentro de uma sessão Wayland, sem que o usuário perceba a diferença.

Na prática, para o usuário final, a escolha entre X11 e Wayland costuma ser transparente: ambos permitem abrir janelas, mover o mouse e digitar normalmente. A diferença fica mais evidente em cenários específicos, como compartilhamento de tela, uso de múltiplos monitores com taxas de atualização diferentes ou configurações avançadas de acessibilidade.
