# Firmware, BIOS, UEFI e Bootloader

## Firmware

Quando seu computador inicia, um chip soldado diretamente na placa-mãe contém o *firmware*: um software gravado em memória não volátil, que persiste mesmo sem energia e que o processador é projetado para executar automaticamente ao ligar. O firmware é, literalmente, o primeiro programa que o computador executa.

A primeira coisa que o firmware faz é o **POST** (*Power-On Self Test*): uma varredura rápida pelo hardware presente. Ele verifica se a memória RAM responde, se o processador está funcional, se há dispositivos de armazenamento conectados. Se algo falhar nessa etapa, o computador pode emitir bipes, um código sonoro que técnicos usam para diagnosticar problemas antes mesmo de uma imagem aparecer na tela.

## BIOS e UEFI

Durante décadas, esse firmware foi chamado de **BIOS** (*Basic Input/Output System*). A interface era simples, navegada com o teclado, exibida em texto puro. O BIOS tinha uma limitação estrutural importante: ele só conseguia reconhecer partições de disco seguindo um padrão chamado **MBR** (*Master Boot Record*), que limitava discos a 2 TB e suportava no máximo quatro partições primárias.

A indústria desenvolveu o **UEFI** (*Unified Extensible Firmware Interface*), que substituiu o BIOS na maioria dos computadores fabricados a partir do início dos anos 2010. O UEFI trouxe uma interface gráfica navegável com mouse, suporte a discos maiores por meio do padrão **GPT** (*GUID Partition Table*), inicialização mais rápida e um recurso chamado ***Secure Boot*** que verifica criptograficamente se o bootloader a ser carregado é confiável, bloqueando softwares maliciosos que tentariam se inserir nessa etapa.

Na prática, UEFI é o BIOS moderno. A maioria das pessoas ainda chama de "entrar na BIOS" a ação de acessar as configurações de firmware, mesmo que o sistema seja UEFI, e os fabricantes de placas-mãe mantêm essa terminologia nas interfaces para não confundir os usuários.

Para acessar essas configurações, é preciso pressionar uma tecla específica logo nos primeiros segundos após ligar o computador, antes que o bootloader assuma o controle.

A tecla varia conforme o fabricante e até mesmo entre modelos de uma mesma marca, sendo `Del`, `F2`, `F1`, `F10` e `F12` algumas das mais comuns. Na dúvida, o manual do fabricante ou uma busca pelo modelo exato da placa-mãe ou do notebook é o caminho mais confiável..

Muitos fabricantes exibem brevemente essa informação na tela durante o POST, uma linha discreta como "Press DEL to enter setup", mas ela desaparece rápido. Além disso, muitos computadores modernos vêm com um recurso de inicialização rápida (*Fast Boot*) habilitado por padrão no UEFI, que reduz ainda mais essa janela de tempo. Se não houver tempo de reagir, basta reiniciar e tentar novamente.

## O bootloader: a ponte entre o firmware e o kernel

Após o POST, o firmware localiza um dispositivo de armazenamento inicializável, geralmente o SSD ou HD onde o sistema operacional está instalado, e transfere o controle para um programa específico chamado *bootloader*.

O bootloader tem uma função muito precisa: encontrar o kernel do sistema operacional no disco, carregá-lo na memória e inicializá-lo. Ele é uma camada necessária porque o kernel não pode simplesmente "se carregar sozinho", ele precisa de alguém que o coloque na memória antes de tomar o controle do hardware.

No Linux, o bootloader mais comum é o **GRUB** (*Grand Unified Bootloader*), que consegue localizar kernels em partições diferentes, passar parâmetros de configuração para o kernel e lidar com múltiplos sistemas no mesmo computador, o que os usuários chamam de ***dual boot***.

Uma alternativa mais simples e moderna é o **systemd-boot**, que integra ao ecossistema do **systemd** (o gerenciador de serviços padrão em boa parte das distribuições Linux atuais). Ele é menos flexível que o GRUB, mas mais direto e com menos configuração manual envolvida.
