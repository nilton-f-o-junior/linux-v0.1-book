# A raiz de arquivos do Linux

O diretório raiz, representado graficamente por uma única barra para a frente (`/`), é o nível mais alto da hierarquia do Linux. Não existe nada acima dele. Todos os outros diretórios, subdiretórios e arquivos estão contidos dentro da raiz. Quando um SSD ou um pendrive é conectado ao sistema, ele não ganha uma nova letra de unidade; ele é “montado” como uma pasta sob essa mesma estrutura.

Essa organização segue um padrão estrito chamado **FHS** (*Filesystem Hierarchy Standard*), que define exatamente onde cada tipo de arquivo deve morar. Isso garante que, independentemente da distribuição Linux que você esteja usando (seja Ubuntu, Fedora, Debian ou Arch), a lógica de funcionamento interno seja previsível e consistente.

Visualmente, a árvore padrão do sistema se ramifica da seguinte forma a partir da raiz:

```bash
/ (raiz)
├── bin/ -> Executáveis essenciais do sistema para todos os usuários
├── boot/ -> Arquivos de inicialização (Kernel, GRUB, initramfs)
├── dev/ -> Arquivos virtuais que representam dispositivos de hardware
├── etc/ -> Arquivos de configuração global do sistema e serviços
├── home/ -> Pastas pessoais dos usuários comuns (ex: /home/usuario)
├── lib/ -> Bibliotecas essenciais compartilhadas pelos programas do /bin
├── lib64/ -> Bibliotecas essenciais de 64 bits
├── media/ -> Ponto de montagem automático para mídias removíveis (pendrives)
├── mnt/ -> Ponto de montagem manual e temporário de sistemas de arquivos
├── opt/ -> Instalação de pacotes de softwares adicionais e proprietários
├── proc/ -> Sistema de arquivos virtual com informações de processos e do kernel
├── root/ -> Diretório pessoal do superusuário (administrador)
├── run/ -> Dados voláteis de processos em execução desde o último boot
├── sbin/ -> Executáveis essenciais de administração do sistema (privilégios root)
├── srv/ -> Dados de serviços e servidores hospedados na máquina
├── sys/ -> Interface em tempo real para configurações do kernel e hardware
├── tmp/ -> Arquivos temporários criados pelo sistema e aplicativos
├── usr/ -> Programas, documentações e bibliotecas secundárias dos usuários
└── var/ -> Arquivos de dados variáveis (logs do sistema, spools, e-mails)
```

## Os principais diretórios e suas funções

Abaixo da raiz, o sistema se divide em pastas com nomes curtos, quase sempre abreviações de suas funções originais em inglês. Os principais elementos que compõem o sistema são:

### /bin e /sbin: os executáveis do sistema

Esses diretórios guardam os comandos que você digita no terminal para interagir com a máquina.

- **`/bin` (Binaries):** contém os comandos binários essenciais que podem ser usados por qualquer usuário do sistema;

- **`/sbin` (System Binaries):** guarda os executáveis destinados à administração do sistema. Geralmente, exigem privilégios de superusuário (*root*) para serem executados.

### /boot: a inicialização

Aqui ficam os arquivos necessários para o computador ligar. É onde reside o carregador de inicialização (geralmente o GRUB), o próprio kernel do Linux (`vmlinuz`) e o `initramfs`, que prepara o terreno e carrega os drivers básicos antes de o sistema principal assumir o controle do hardware. Modificações incorretas neste diretório podem impedir a máquina de iniciar.

### /dev: os dispositivos como arquivos

No Linux, há uma máxima famosa: *“Tudo é um arquivo”*. O diretório `/dev` (Devices) é a aplicação prática desse conceito. Ele não armazena arquivos reais no disco, mas sim pontos de acesso aos hardwares da máquina.

- **`/dev/sda` ou `/dev/nvme0n1`:** representam os discos de armazenamento físicos;

- **`/dev/null`:** tudo o que é enviado para ele desaparece instantaneamente, sendo muito utilizado para descartar saídas de comandos indesejadas.

### /etc: o painel de controle em texto

Se você precisa mudar a configuração de um programa, do sistema de rede ou dos usuários, o `/etc` (*Editable Text Configuration*) é o lugar. Ele guarda os arquivos de configuração de praticamente todos os serviços globais do sistema. Quase todos esses arquivos são em formato de texto puro, permitindo que o administrador altere o comportamento do sistema editando apenas algumas linhas.

### /home e /root: os territórios dos usuários

O Linux separa rigidamente o espaço do administrador geral dos usuários comuns.

- **`/home`:** é onde ficam as pastas pessoais de cada usuário cadastrado na máquina (ex: `/home/felipe`). Seus documentos, downloads, imagens e até as configurações personalizadas de seus programas ficam guardados aqui;

- **`/root`:** é a pasta pessoal exclusiva do superusuário do sistema. Ela fica separada do `/home` por questões de segurança, garantindo que o administrador tenha seu próprio espaço isolado e protegido de falhas comuns.

### /lib, /lib32 e /lib64: as bibliotecas

Programas dependem de pedaços de código compartilhados para executar tarefas comuns (como desenhar uma interface na tela ou criptografar uma senha). Essas coleções de código são chamadas de bibliotecas e ficam guardadas nos diretórios `/lib`. Elas equivalem funcionalmente aos arquivos `.dll` do ecossistema Windows.

### /media e /mnt: encaixando novos discos

Quando você pluga um dispositivo de armazenamento externo, ele precisa ser “montado” na árvore de diretórios para se tornar acessível.

- **`/media`:** é gerenciado automaticamente pelo sistema. Quando você pluga um pendrive ou HD externo, o Linux cria uma pasta automática aqui dentro para dar acesso imediato aos arquivos;

- **`/mnt`:** é um espaço reservado para montagens manuais feitas pelo administrador. Se você precisa fixar temporariamente uma partição de rede ou outro disco rígido específico no sistema, o `/mnt` é o local padrão para isso.

### /opt: softwares de terceiros

O diretório `/opt` serve para a instalação de aplicativos proprietários ou que não seguem o gerenciador de pacotes padrão da distribuição. Softwares corporativos ou de grande porte que vêm em pacotes fechados (como o Google Chrome, Discord ou ferramentas específicas de desenvolvimento) costumam se instalar em subpastas próprias dentro do `/opt` para não misturar seus arquivos com a estrutura padrão do sistema.

### /proc e /sys: as janelas do kernel

Assim como o `/dev`, os diretórios `/proc` (Processes) e `/sys` (System) não ocupam espaço físico no seu SSD ou HD. Eles são os chamados sistemas de arquivos virtuais, criados dinamicamente na memória RAM pelo kernel do Linux.

- **`/proc`:** contém informações em tempo real sobre os processos que estão rodando na máquina e o status do hardware;

- **`/sys`:** organiza e expõe informações sobre os drivers, barramentos e dispositivos do computador, permitindo ler e interagir diretamente com as configurações em tempo real do kernel.

### /usr: a central de aplicativos

O `/usr` é uma das maiores pastas do sistema. Ela funciona como uma “segunda raiz” e guarda a grande maioria dos programas instalados e utilizados no dia a dia, junto com seus ícones, arquivos de tradução, documentações e fontes. Dentro dele, existem réplicas da estrutura principal voltadas para o usuário comum, como `/usr/bin` e `/usr/lib`.

### /var: os dados voláteis

O diretório `/var` abriga arquivos cujo tamanho e conteúdo mudam constantemente à medida que o sistema opera. É o lugar onde ficam guardados os logs do sistema (o histórico detalhado de tudo o que acontece na máquina, em `/var/log`), as filas de impressão, as bases de dados e os arquivos temporários de servidores web.

## A lixeira no Linux: onde ficam os arquivos apagados?

Ao contrário do ecossistema Windows, que centraliza os itens deletados em uma pasta oculta na raiz de cada unidade física (`$Recycle.Bin`), o Linux adota um gerenciamento descentralizado da lixeira. Ele é baseado nas especificações da Freedesktop.org (padrão XDG) e funciona de maneira intimamente ligada a quem está logado e ao local onde o arquivo estava armazenado. Além disso, a lixeira é um recurso mantido pela interface gráfica, e não pelo sistema de arquivos em si.

### A lixeira do usuário local

Quando você está navegando pelo gerenciador de arquivos em ambiente gráfico (como GNOME, KDE ou XFCE) e decide apagar um arquivo contido na sua pasta pessoal, ele não é enviado para uma pasta global na raiz do sistema. Ele é movido para uma pasta oculta dentro do seu próprio `/home`:

`/home/usuario/.local/share/Trash/`

Internamente, essa estrutura oculta é dividida em duas subpastas vitais para a segurança do processo:

- **`files/`:** é o local onde os arquivos e pastas deletados residem fisicamente. O sistema pode alterar ligeiramente seus nomes originais caso ocorram duplicatas durante a remoção;

- **`info/`:** contém pequenos arquivos de texto com metadados cruciais de cada item excluído. Nesses arquivos são registrados o caminho original de onde o item foi retirado e a data/hora exata em que ele foi enviado à lixeira. É essa pasta de metadaos que torna o botão “Restaurar” funcional no sistema.

### Discos externos e a pasta `.Trash-$UID`

O mecanismo muda quando lidamos com mídias removíveis, como pendrives ou partições secundárias de HDs montadas em `/media` ou `/mnt`. Mover um arquivo de 20 GB de um pendrive diretamente para a lixeira do `/home` exigiria que o sistema copiasse fisicamente todos esses dados através do barramento, tornando o processo demorado e ineficiente.

Para solucionar isso, o Linux cria uma pasta oculta na própria raiz do dispositivo externo conectado, utilizando a nomenclatura `.Trash-$UID` (onde `$UID` é o identificador numérico exclusivo do seu usuário, sendo `1000` o padrão para o primeiro usuário criado). Dessa forma, os dados permanecem no mesmo dispositivo físico e são movidos instantaneamente para essa pasta oculta até que o usuário decida esvaziar a lixeira de vez.

### O terminal não tem lixeira

Um detalhe de extrema importância para o usuário é o comportamento da linha de comando. Ferramentas de terminal nativas, como o utilitário `rm` (remove), não possuem nenhuma integração com a mecânica da lixeira descrita acima.

Quando um arquivo é excluído via terminal, os ponteiros que indicam a localização daquele dado no disco são rompidos imediatamente pelo sistema de arquivos. Para o sistema operacional, aquele espaço é marcado como livre e reutilizável no mesmo instante, tornando a recuperação impossível por vias comuns. A existência da lixeira é puramente uma camada de segurança aplicada pelos gerenciadores de arquivos visuais.
