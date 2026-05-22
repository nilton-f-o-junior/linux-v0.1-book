# Firmware, BIOS, UEFI e Bootloader

Quando você pressiona o botão de ligar o computador, a primeira coisa que acontece não é o Windows subindo, nem o Linux carregando. Antes de qualquer
sistema operacional entrar em cena, existe um processo de inicialização inteiro que acontece em camadas, cada uma preparando o terreno para a próxima.

## O firmware: o primeiro código a rodar

Quando seu computador inicia, um chip soldado diretamente na placa-mãe contém o *firmware*: um software gravado em memória não volátil, que persiste mesmo sem energia e que o processador é projetado para executar automaticamente ao ligar. O firmware é, literalmente, o primeiro programa que o computador executa.

A primeira coisa que o firmware faz é o *POST* (Power-On Self Test): uma varredura rápida pelo hardware presente. Ele verifica se a memória RAM responde, se o processador está funcional, se há dispositivos de armazenamento conectados. Se algo falhar nessa etapa, o computador pode emitir bipes, um código sonoro que técnicos usam para diagnosticar problemas antes mesmo de uma imagem aparecer na tela.

## BIOS e UEFI: dois momentos de uma mesma ideia

Durante décadas, esse firmware foi chamado de *BIOS* (Basic Input/Output System). A interface era simples, navegada com o teclado, exibida em texto puro. O BIOS tinha uma limitação estrutural importante: ele só conseguia reconhecer partições de disco seguindo um padrão chamado MBR (Master Boot Record), que limitava discos a 2 TB e suportava no máximo quatro partições primárias.

Com o tempo, essas restrições foram se tornando um problema real. A indústria desenvolveu então o *UEFI* (Unified Extensible Firmware Interface), que substituiu o BIOS na maioria dos computadores fabricados a partir do início dos anos 2010. O UEFI trouxe uma interface gráfica navegável com mouse, suporte a discos maiores por meio do padrão GPT (GUID Partition Table), inicialização mais rápida e um recurso chamado *Secure Boot* que verifica criptograficamente se o bootloader a ser carregado é confiável, bloqueando softwares maliciosos que tentariam se inserir nessa etapa.

Na prática, UEFI é o BIOS moderno. A maioria das pessoas ainda chama de "entrar na BIOS" a ação de acessar as configurações de firmware, mesmo que o
sistema seja UEFI, e os fabricantes de placas-mãe mantêm essa terminologia nas interfaces para não confundir os usuários.

Para acessar essas configurações, é preciso pressionar uma tecla específica logo nos primeiros segundos após ligar o computador, antes que o bootloader assuma o controle. A tecla varia conforme o fabricante:

- `Del` ou `F2`: mais comuns em placas-mãe e notebooks em geral
- `F1`: presente em máquinas Lenovo
- `F10`: encontrado em alguns modelos HP
- `F12`: costuma abrir diretamente o menu de seleção de dispositivo de boot em várias marcas

Muitos fabricantes exibem brevemente essa informação na tela durante o POST, uma linha discreta como "Press DEL to enter setup", mas ela desaparece rápido. Se não houver tempo de reagir, basta reiniciar e tentar novamente.

## O bootloader: a ponte entre o firmware e o kernel

Após o POST, o firmware localiza um dispositivo de armazenamento inicializável, geralmente o SSD ou HD onde o sistema operacional está instalado, e transfere o controle para um programa específico gravado no início desse dispositivo. Esse programa é o *bootloader*.

O bootloader tem uma função muito precisa: encontrar o kernel do sistema operacional no disco, carregá-lo na memória e inicializá-lo. Ele é uma camada
necessária porque o kernel não pode simplesmente "se carregar sozinho", ele precisa de alguém que o coloque na memória antes de tomar o controle do hardware. Isso acontece porque, nesse ponto, ainda não há nenhum sistema operacional ativo para fazer esse trabalho.

No Linux, o bootloader mais comum é o *GRUB* (Grand Unified Bootloader), que consegue localizar kernels em partições diferentes, passar parâmetros de
configuração para o kernel e lidar com múltiplos sistemas no mesmo computador, o que os usuários chamam de *dual boot*.

Uma alternativa mais simples e moderna é o *systemd-boot*, que integra ao ecossistema do systemd (o gerenciador de serviços padrão em boa parte das
distribuições Linux atuais). Ele é menos flexível que o GRUB, mas mais direto e com menos configuração manual envolvida.

O comportamento do bootloader varia conforme o sistema operacional:

- **Linux**: configurável, personalizável e visível ao usuário, especialmente no GRUB;
- **Windows**: proprietário e transparente, sem interação direta pelo usuário;
- **macOS (Apple Silicon, a partir de 2020)**: gerenciado pelo próprio chip, de forma integrada e invisível ao usuário.
