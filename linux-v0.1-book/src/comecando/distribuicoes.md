# Distribuições

Tecnicamente falando, Linux é apenas o kernel, o núcleo do sistema operacional, que gerencia o hardware, a memória e os processos. Mas um kernel sozinho não é um sistema utilizável. Para isso, é preciso empacotá-lo junto com ferramentas, interfaces gráficas, gerenciadores de pacotes, utilitários e configurações. Esse pacote completo é o que chamamos de distribuição ou distro.

## As três grandes famílias

### Debian

O [Debian](https://www.debian.org/) nasceu em 1993 e foi construída com um princípio muito claro: software livre, estabilidade e governança comunitária. Ela criou o formato de pacotes `.deb` e o gerenciador `apt`, que se tornaram padrão em boa parte do mundo Linux.

- Principais distribuições filhas: [Ubuntu](https://ubuntu.com/) e [Linux Mint](https://linuxmint.com/).

### Red Hat

A [Red Hat](https://www.redhat.com/) foi pioneira na ideia de que era possível construir um negócio em torno de software livre. Ela adotou e consolidou o formato `.rpm` e o sistema de pacotes `yum/dnf`. Sua distribuição empresarial, o [RHEL (Red Hat Enterprise Linux)](https://www.redhat.com/en/technologies/linux-platforms/enterprise-linux), é amplamente usada em servidores corporativos e ambientes críticos.

- Principais distribuições filhas: [Fedora](https://fedoraproject.org/) e [Rocky Linux](https://rockylinux.org/).

### Arch Linux

O [Arch](https://archlinux.org/) é rolling release, ou seja o sistema é atualizado continuamente com os pacotes mais recentes. Tradicionalmente, a instalação é feita do zero, sem assistentes gráficos, e o usuário monta o sistema peça por peça. Hoje existe também um script oficial opcional, o archinstall, para quem prefere um caminho guiado.

- Principais distribuições filhas: [Manjaro](https://manjaro.org/) e [CachyOS](https://cachyos.org/).

## Outras famílias relevantes

Além dessas três, outras distribuições com linhagens próprias merecem menção.

### NixOS

O [NixOS](https://nixos.org/) representa uma abordagem radicalmente diferente: o sistema inteiro é descrito por um arquivo de configuração declarativo. Qualquer mudança pode ser revertida. 

### openSUSE

O [openSUSE](https://www.opensuse.org/) tem uma linhagem própria, com a versão Leap (estável e previsível) e a Tumbleweed (rolling release como a Arch).

### Gentoo

O [Gentoo](https://www.gentoo.org/) é a distribuição onde você compila tudo. Cada pacote é compilado localmente com as otimizações que você definir. 

### Slackware

O [Slackware](http://www.slackware.com/), lançado em 1993, é a distribuição ativa mais antiga. Sem gerenciador de dependências automático e com um instalador minimalista em modo texto, é sinônimo de purismo total.
