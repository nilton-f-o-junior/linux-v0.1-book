# Distribuições

Uma das características mais marcantes do Linux é a variedade: ao contrário do Windows ou macOS, não existe "um Linux", mas dezenas de versões construídas sobre o mesmo núcleo, cada uma com objetivos e públicos distintos.

## O que é uma distribuição Linux?

Tecnicamente falando Linux é apenas o *kernel*, o núcleo do sistema operacional, ele gerencia o *hardware*, a memória e os processos. Mas um *kernel* sozinho não é um sistema utilizável. Para isso, é preciso empacotá-lo junto com ferramentas, interfaces gráficas, gerenciadores de pacotes, utilitários e configurações. Esse pacote completo é o que chamamos de distribuição (ou *distro*).

## As três grandes famílias

### Debian

A [Debian](https://www.debian.org/) nasceu em 1993 e foi construída com um princípio muito claro: *software livre*, estabilidade e governança comunitária. Ela criou o formato de pacotes `.deb` e o gerenciador `apt` (construído sobre o `dpkg`, a ferramenta base de gerenciamento de pacotes), que se tornaram padrão em boa parte do mundo Linux.

A filha mais famosa da Debian é o [Ubuntu](https://ubuntu.com/), lançado pela Canonical em 2004 com o objetivo de tornar o Linux acessível para o usuário comum. O Ubuntu teve tanto sucesso que gerou uma família própria: o [Linux Mint](https://linuxmint.com/) (focado em facilidade de uso), o [Pop!\_OS](https://pop.system76.com/) (voltado para criadores e *gamers*), o [Zorin OS](https://zorin.com/os/) (desenhado para quem vem do Windows) e muitas outras.

### Red Hat

A [Red Hat](https://www.redhat.com/) Inc. foi pioneira na ideia de que era possível construir um negócio em torno de *software livre*. Ela adotou e consolidou o formato `.rpm` e o sistema de pacotes `yum/dnf`. Sua distribuição empresarial, o [RHEL (Red Hat Enterprise Linux)](https://www.redhat.com/en/technologies/linux-platforms/enterprise-linux), é amplamente usada em servidores corporativos e ambientes críticos.

Para quem quer a robustez do RHEL sem pagar pelo suporte, existem *clones comunitários* como o [AlmaLinux](https://almalinux.org/) e o [Rocky Linux](https://rockylinux.org/). Já o [Fedora](https://fedoraproject.org/) funciona como laboratório de inovação da Red Hat, onde as novidades são testadas antes de chegar ao RHEL.

### Arch Linux

A [Arch](https://archlinux.org/) tem uma filosofia completamente diferente. Ela é *rolling release*: não tem versões, o sistema é atualizado continuamente com os pacotes mais recentes. A instalação é feita *do zero*, sem assistentes, e o usuário monta o sistema peça por peça. Isso a torna complexa para iniciantes, mas muito popular entre entusiastas.

O [Manjaro](https://manjaro.org/) surgiu para tornar a experiência Arch mais acessível, com um instalador gráfico e pacotes pré-configurados. O [EndeavourOS](https://endeavouros.com/) segue caminho parecido, mas ficando bem mais próximo da Arch pura.

### Outras famílias relevantes

Além dessas três, outras distribuições com linhagens próprias merecem menção.

#### openSUSE

O [openSUSE](https://www.opensuse.org/) tem uma linhagem própria, com a versão *Leap* (estável e previsível) e a *Tumbleweed* (*rolling release* como a Arch). É muito usada em ambientes profissionais na Europa.

#### Gentoo

O [Gentoo](https://www.gentoo.org/) é a distribuição onde você *compila tudo*. Cada pacote é compilado localmente com as otimizações que você definir. Extremamente poderosa, extremamente trabalhosa.

#### Slackware

O [Slackware](http://www.slackware.com/), lançado em 1993, é a distribuição ativa mais antiga. Sem gerenciador de dependências, sem assistentes — *purismo total*.

#### NixOS

O [NixOS](https://nixos.org/) representa uma abordagem radicalmente diferente: o sistema inteiro é descrito por um arquivo de configuração *declarativo*. Qualquer mudança pode ser revertida. É fascinante e cresceu muito nos últimos anos entre desenvolvedores.
