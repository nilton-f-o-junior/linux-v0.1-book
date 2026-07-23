# Pacotes e repositórios

Se o sistema operacional é a base sobre a qual tudo roda, os pacotes são a forma como o software chega até essa base. Instalar um programa raramente significa copiar um único arquivo executável: significa trazer um conjunto de binários, bibliotecas, arquivos de configuração e metadados, tudo organizado de um jeito que o sistema saiba o que fazer com cada peça. É o gerenciador de pacotes que viabiliza isso, e é o repositório que decide de onde esse conjunto vem.

## O que é um pacote?

Um pacote é um arquivo compactado que reúne tudo o que um programa precisa para ser instalado corretamente: os binários executáveis (arquivos já compilados e prontos para execução pelo computador), as bibliotecas que ele usa, os arquivos de configuração padrão, a documentação e um conjunto de metadados que descreve o próprio pacote. Esses metadados incluem o nome do software, a versão, a arquitetura para a qual foi compilado e, principalmente, as dependências, ou seja, quais outros pacotes precisam estar presentes para que ele funcione.

Sem esse formato padronizado, cada instalação seria um processo manual: baixar o código-fonte, compilar, descobrir na tentativa e erro quais bibliotecas faltam, resolver cada uma delas separadamente. O pacote existe justamente para eliminar essa fricção.

## Formatos de pacote

Cada família de distribuições Linux adotou seu próprio formato de pacote, e a escolha de formato costuma ser a primeira coisa que diferencia uma distribuição da outra do ponto de vista prático:

- **.deb:** formato usado por Debian, Ubuntu e derivados. É um arquivo *ar* que contém, internamente, os binários e os metadados de controle do pacote;

- **.rpm:** formato usado por Red Hat, Fedora, openSUSE e derivados. Cumpre o mesmo papel do `.deb`, mas com estrutura interna e ferramentas de gerenciamento diferentes;

- **.pkg.tar.zst:** formato usado pelo Arch Linux, compactado com Zstandard. Segue uma filosofia mais enxuta, com menos camadas de abstração sobre o conteúdo do pacote.

Nenhum desses formatos é compatível com os outros. Um `.deb` não instala em um sistema baseado em `.rpm` sem conversão, e mesmo quando a conversão é possível, o resultado nem sempre é confiável.

## Gerenciadores de pacote

O gerenciador de pacotes é o programa responsável por instalar, atualizar, remover e consultar pacotes no sistema. Ele existe em duas camadas complementares: uma camada de baixo nível, que lida com um único pacote por vez, e uma camada de alto nível, que resolve dependências e consulta repositórios.

### Camada de baixo nível

- **dpkg:** ferramenta de baixo nível para sistemas baseados em Debian. Instala e remove arquivos `.deb` individuais, mas não resolve dependências nem consulta repositórios remotos;

- **rpm:** equivalente ao `dpkg` no mundo Red Hat. Instala pacotes `.rpm` diretamente, sem lidar com dependências externas ao próprio arquivo.

Usar essas ferramentas diretamente é possível, mas pouco prático: se o pacote depende de outro que não está instalado, a instalação falha e cabe ao usuário resolver manualmente.

### Camada de alto nível

- **APT:** camada sobre o `dpkg` usada por Debian, Ubuntu e derivados. Resolve dependências automaticamente, consulta repositórios configurados e baixa tudo o que for necessário para completar a instalação;

- **DNF:** camada sobre o `rpm` usada por Fedora e distribuições relacionadas. Sucessor do YUM, com resolução de dependências mais rápida e melhor tratamento de conflitos;

- **Pacman:** gerenciador do Arch Linux, que combina as duas camadas em uma única ferramenta. É conhecido pela sintaxe direta e pela velocidade das operações;

Na prática, é essa camada de alto nível que o usuário acessa no dia a dia. Comandos como `sudo apt install`, `sudo dnf install` ou `sudo pacman -S`, descrevem a intenção: instalar um programa e deixar para o gerenciador de tarefas descobrir tudo o que precisa ser baixado.

## Repositórios

Um repositório é um servidor, ou conjunto de servidores, que hospeda pacotes prontos para instalação, junto com um índice que descreve o que está disponível: nomes, versões, dependências e a localização de cada arquivo. O gerenciador de pacotes consulta esse índice antes de instalar qualquer coisa, o que permite que ele saiba, sem baixar o pacote inteiro primeiro, se a instalação é viável e o que mais precisa ser trazido junto.

### Repositórios oficiais

Toda distribuição mantém repositórios oficiais, mantidos pela própria organização por trás dela. Esses repositórios passam por um processo de curadoria: os pacotes são testados, empacotados segundo convenções específicas da distribuição e, em muitos casos, assinados digitalmente antes de ficarem disponíveis. É a fonte mais confiável, mas nem sempre tem a versão mais recente de um software, porque prioriza estabilidade sobre novidade.

### Repositórios de terceiros

Quando um pacote não está nos repositórios oficiais, ou está em uma versão desatualizada, é comum recorrer a repositórios de terceiros:

- **PPA:** repositórios individuais no Ubuntu, mantidos por desenvolvedores ou equipes de projeto fora da estrutura oficial da distribuição;

- **EPEL:** repositório mantido pela comunidade Fedora, com pacotes adicionais para distribuições baseadas em Red Hat Enterprise Linux;

- **COPR:** sistema de repositórios pessoais equivalente ao PPA, mas para o ecossistema Fedora;

- **AUR:** repositório mantido pela comunidade Arch Linux, onde usuários compartilham scripts de construção (PKGBUILDs) para software que não está nos repositórios oficiais.

Adicionar um repositório de terceiros expande o que está disponível, mas também expande a superfície de confiança do sistema: o gerenciador passa a instalar pacotes de uma fonte que não passou pela mesma curadoria dos repositórios oficiais. 

### Mirrors

Os repositórios oficiais raramente ficam em um único servidor. Eles são replicados em *mirrors* espalhados por diferentes regiões, o que reduz a distância entre o usuário e o servidor e distribui a carga de download. O gerenciador de pacotes costuma escolher automaticamente o mirror mais próximo ou mais rápido, embora seja possível configurar essa escolha manualmente.

## Resolução de dependências

O maior valor prático de um gerenciador de pacotes de alto nível está na resolução de dependências. Um programa raramente é autossuficiente: ele depende de bibliotecas compartilhadas, que por sua vez podem depender de outras bibliotecas. Instalar um único pacote pode, na prática, significar instalar uma dezena de outros pacotes que ele exige para funcionar.

O gerenciador constrói uma árvore de dependências antes de iniciar qualquer instalação, verifica o que já está presente no sistema e baixa apenas o que falta. Quando duas dependências exigem versões incompatíveis de um mesmo pacote, ocorre um conflito de dependências, e é papel do gerenciador reportar isso ao usuário em vez de deixar o sistema em um estado inconsistente.

## Assinatura e verificação de pacotes

Repositórios confiáveis assinam digitalmente seus pacotes e seus índices com chaves GPG. Antes de instalar qualquer coisa, o gerenciador verifica essa assinatura e recusa a instalação se ela não corresponder a uma chave conhecida e confiável.

Esse mecanismo protege contra dois cenários: um mirror comprometido que serve um pacote alterado, e um ataque de *man-in-the-middle* durante o download. Sem verificação de assinatura, nada impediria que um pacote malicioso fosse instalado silenciosamente no lugar do original.

Ao adicionar um repositório de terceiros, é comum que o próprio processo exija importar a chave GPG daquele repositório antes que o gerenciador aceite instalar pacotes vindos dele.

## Cache local e atualização de listas

O gerenciador de pacotes mantém, localmente, uma cópia do índice de cada repositório configurado. Essa cópia é o que permite que comandos de busca e verificação de versão respondam rapidamente, sem precisar consultar o servidor remoto a cada operação.

Esse índice local pode ficar desatualizado com o tempo, à medida que novos pacotes são publicados nos repositórios. Por isso, antes de instalar ou atualizar qualquer coisa, é prática comum atualizar essa lista primeiro (`sudo apt update`, `sudo dnf makecache`, `sudo pacman -Sy`), garantindo que o gerenciador esteja trabalhando com informações atuais antes de decidir o que baixar.

No caso do APT, é importante notar que o comando `update` atualiza apenas o índice de pacotes disponíveis, e não os programas instalados no sistema. No caso do Pacman, vale uma ressalva: o recomendado é sempre sincronizar e atualizar o sistema juntos (`sudo pacman -Syu`), em vez de rodar `-Sy` isoladamente, para evitar inconsistências entre pacotes.

## Pacotes binários e pacotes de código-fonte

A grande maioria das instalações do dia a dia usa pacotes binários: o software já vem compilado, pronto para rodar na arquitetura correspondente. A alternativa é compilar o software a partir do código-fonte, algo que alguns gerenciadores, como o *Portage* do Gentoo, adotam como modelo padrão.

Compilar a partir do código-fonte permite otimizações específicas para o hardware da máquina e maior controle sobre quais recursos do programa são incluídos, mas tem um custo real: o tempo de compilação, que pode levar de minutos a horas dependendo do software, e a necessidade de resolver dependências de compilação além das dependências de execução.

## Gerenciadores universais

Nos últimos anos, surgiram formatos de pacote que tentam contornar a fragmentação entre distribuições, empacotando o software junto com todas as suas dependências em um único arquivo autocontido:

- **Flatpak:** empacota o aplicativo junto com um runtime compartilhado, isolado do sistema por meio de sandboxing. Mantido por um projeto independente, com foco em aplicações de desktop;

- **Snap:** formato equivalente, mantido pela Canonical, com atualização automática integrada e forte presença no ecossistema Ubuntu;

- **AppImage:** um único arquivo executável que não exige instalação nem privilégios administrativos, mas também não compartilha dependências entre diferentes AppImages instalados.

A vantagem desses formatos é o fato de que o mesmo pacote funciona, em teoria, em qualquer distribuição, sem depender do formato ou do repositório nativo dela. A desvantagem é o tamanho: como ele traz o software e suas próprias dependências, acaba ocupando mais espaço em disco já que não reaproveita o que está instalado no sistema.
