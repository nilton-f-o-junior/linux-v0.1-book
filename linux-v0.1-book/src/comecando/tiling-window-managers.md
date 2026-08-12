# Tiling Window Managers

Os gerenciadores de janelas em mosaico, ou *tiling window managers* (TWMs), não entregam uma área de trabalho no sentido convencional: sem ícones na tela, sem barra de tarefas clicável, sem mouse obrigatório. O que entregam é controle total sobre onde cada janela fica, e fazem isso de forma automática.

Ao abrir um programa, ele ocupa a tela inteira. Ao abrir um segundo, a tela se divide ao meio. Um terceiro programa faz a divisão se reorganizar novamente, e assim por diante. Cada janela encaixa ao lado da outra como peças de um quebra-cabeça, sem sobreposição, sem espaço vazio. O nome *tiling*, em inglês, significa azulejo, e o comportamento é exatamente esse.


## Wayland

### Hyprland

O [hyprland](https://hyprland.org/) é um dos TWMs que mais cresceram em popularidade nos últimos anos. Trouxe algo que os TWMs clássicos evitam: animações, janelas que deslizam, bordas arredondadas, efeitos visuais. É a aposta de quem quer o melhor dos dois mundos.

### Sway

O sucessor espiritual do i3, [swaywm](https://swaywm.org/) é compatível com sua configuração, mas construído sobre o Wayland em vez do X11. Para quem quer modernidade por baixo sem reaprender tudo por cima, é a transição natural.

### Niri

Um TWM com uma proposta distinta, o [niri](https://github.com/YaLTeR/niri) em vez do layout de mosaico tradicional, organiza as janelas em colunas rolantes (*scrollable tiling*), como uma fita horizontal infinita.

### River

Um TWM minimalista, o [river](https://isaacfreund.com/software/river/) é um núcleo enxuto, com comportamento definido por meio de um programa externo de configuração. Isso mantém o projeto pequeno e fácil de entender, ao custo de exigir mais trabalho manual do usuário.

### Wayfire

O [wayfire](https://wayfire.org/) une o conceito de tiling a um sistema de plugins que permite adicionar efeitos visuais, animações e comportamentos personalizados. É uma opção para quem vem de ambientes mais visuais e não quer abrir mão completamente desses recursos.


## X11

### i3

Provavelmente o ponto de entrada mais acessível, o [i3wm](https://i3wm.org/) trás uma configuração baseada em um único arquivo de texto legível, e a curva de aprendizado é bem documentada. É estável, amplamente adotado e tem uma comunidade ativa.

### AwesomeWM

Um TWM altamente configurável e estendido por meio da linguagem Lua, [awesomewm](https://awesomewm.org/) permite criar barras de status, widgets e comportamentos personalizados com bastante liberdade, sendo uma escolha comum entre quem gosta de programar sua própria interface.

### bspwm

O [bspwm](https://github.com/baskerville/bspwm) não interpreta atalhos de teclado por conta própria. Toda interação é feita por meio de mensagens enviadas por outros programas, o que significa que um programa separado, como o `sxhkd`, precisa ser configurado para mapear os atalhos de teclado. Isso o torna extremamente flexível para quem quer montar um ambiente completamente personalizado do zero.

### Qtile

Uma proposta diferente dentro do universo dos TWMs, o [qtile](https://qtile.org/) é configurado e estendido inteiramente em Python. Em vez de editar arquivos de texto com sintaxe própria, o usuário escreve código Python para definir layouts, atalhos, barras e comportamentos.

### dwm

Uma filosofia de software que leva o minimalismo ao extremo, o [dwm](https://dwm.suckless.org/) possui um código extremamente enxuto, com pouco menos de duas mil linhas. Não há arquivo de configuração: você edita o código-fonte diretamente e recompila.

### xmonad

O  [xmonad.org](https://xmonad.org/) é escrito e configurado na linguagem Haskell. Sua configuração é, na prática, um pequeno programa, o que atrai principalmente usuários já familiarizados com programação funcional. É extremamente estável, ainda que exija uma curva de aprendizado mais acentuada para quem não conhece a linguagem.


## O que esperar da experiência

Usar um TWM pela primeira vez é desorientador, com algumas semanas de uso, a lógica começa a fazer sentido, o teclado se torna uma extensão do pensamento, e mover o mouse para clicar em algo passa a parecer lento.

