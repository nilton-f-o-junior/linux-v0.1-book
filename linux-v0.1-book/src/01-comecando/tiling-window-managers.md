# Tiling Window Managers

Existe uma categoria de interface que fica um passo além dos ambientes de trabalho tradicionais. Os gerenciadores de janelas em mosaico, ou *tiling window managers* (TWMs), não entregam uma área de trabalho no sentido convencional: sem ícones na tela, sem barra de tarefas clicável, sem mouse obrigatório. O que entregam é controle total sobre onde cada janela fica, e fazem isso de forma automática.

Ao abrir um programa, ele ocupa a tela inteira. Ao abrir um segundo, a tela se divide ao meio. Um terceiro, e a divisão se reorganiza novamente. Cada janela encaixa ao lado da outra como peças de um quebra-cabeça, sem sobreposição, sem espaço vazio. O nome *tiling*, em inglês, significa azulejo, e o comportamento é exatamente esse.

## Os mais populares

### i3

Provavelmente o ponto de entrada mais acessível. Sua configuração é feita por um único arquivo de texto legível, e a curva de aprendizado, apesar de real, é bem documentada. É estável, amplamente adotado e tem uma comunidade ativa. Muitos usuários que partem do i3 nunca voltam para ambientes tradicionais.

- **Roda sobre:** X11;
- **Ideal para:** quem está começando com TWMs e quer a curva de aprendizado mais suave, com bastante documentação disponível;

### Sway

O sucessor espiritual do i3: compatível com sua configuração, mas construído sobre o Wayland em vez do X11. Para quem quer modernidade por baixo sem reaprender tudo por cima, é a transição natural.

- **Roda sobre:** Wayland;
- **Ideal para:** usuários de i3 que querem migrar para Wayland sem reaprender tudo do zero;

### dwm

Uma filosofia de software que leva o minimalismo ao extremo. O código é extremamente enxuto, com algumas centenas de linhas. Não há arquivo de configuração, você edita o código-fonte diretamente e recompila.

- **Roda sobre:** X11;
- **Ideal para:** entusiastas de minimalismo extremo, confortáveis em editar e recompilar o código-fonte para configurar o ambiente;

### bspwm

Adota uma abordagem diferente: não interpreta atalhos de teclado por conta própria. Toda interação é feita por meio de mensagens enviadas por outros programas, o que significa que um programa separado, como o `sxhkd`, precisa ser configurado para mapear os atalhos de teclado. Isso o torna extremamente flexível para quem quer montar um ambiente completamente personalizado do zero.

- **Roda sobre:** X11;
- **Ideal para:** um ambiente completamente personalizado do zero, combinando ferramentas externas;

### Hyprland

Um dos TWMs que mais cresceu em popularidade nos últimos anos. Trouxe algo que os TWMs clássicos evitam: animações, janelas que deslizam, bordas arredondadas, efeitos visuais. É a aposta de quem quer o melhor dos dois mundos.

- **Roda sobre:** Wayland;
- **Ideal para:** quem busca a lógica de mosaico sem abrir mão de animações e efeitos visuais modernos;

### Qtile

Uma proposta diferente dentro do universo dos TWMs: é configurado e estendido inteiramente em Python. Em vez de editar arquivos de texto com sintaxe própria, o usuário escreve código Python para definir layouts, atalhos, barras e comportamentos.

- **Roda sobre:** X11 e Wayland;
- **Ideal para:** programadores Python que buscam configurar o ambiente escrevendo código em vez de arquivos de configuração próprios;

### Niri

Um TWM com uma proposta distinta: em vez do layout de mosaico tradicional, organiza as janelas em colunas rolantes (*scrollable tiling*), como uma fita horizontal infinita. 

- **Roda sobre:** Wayland;
- **Ideal para:** quem busca uma alternativa mais fluida ao Sway e ao Hyprland, com organização em colunas rolantes;

## O que esperar da experiência

Usar um TWM pela primeira vez é desorientante, pois não há nada na tela além do que você colocou lá. Nenhuma pista visual, nenhum menu de boas-vindas. A produtividade inicial cai, e a configuração consome tempo.

Com algumas semanas de uso, a lógica começa a fazer sentido, o teclado se torna uma extensão do pensamento, e mover o mouse para clicar em algo passa a parecer lento. Muitos usuários descrevem a transição como irreversível.

É uma categoria ideal para desenvolvedores, administradores de sistemas e qualquer pessoa que passe horas por dia no terminal, mas não é recomendada para quem está começando no Linux ou precisa de uma experiência imediata sem curva de aprendizado.
