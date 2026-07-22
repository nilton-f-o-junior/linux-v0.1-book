# Software Livre e Filosofia GNU

Se o hardware é a estrutura física que viabiliza a computação, e o sistema operacional é o que organiza seus recursos, o software é o pensamento transformado em código. Mas o software não é apenas uma ferramenta técnica; ele é um produto de escolhas legais e políticas. A forma como o código é distribuído define o que o usuário pode ou não fazer em sua própria máquina, estabelecendo a fronteira entre o controle do usuário sobre o sistema e o controle do sistema sobre o usuário.

## O que é o Software Livre?

O conceito de Software Livre não trata de preço, mas de liberdade (a clássica distinção em inglês entre *free beer* e *free speech*). Um software é considerado livre quando sua licença garante aos usuários quatro liberdades fundamentais, formalizadas por Richard Stallman:

- **Liberdade 0:** A liberdade de executar o programa para qualquer propósito.
- **Liberdade 1:** A liberdade de estudar como o programa funciona e adaptá-lo às suas necessidades. O acesso ao código-fonte é um pré-requisito para isso.
- **Liberdade 2:** A liberdade de redistribuir cópias de modo que você possa ajudar o próximo.
- **Liberdade 3:** A liberdade de distribuir cópias de suas versões modificadas a terceiros. Desta forma, toda a comunidade tem a chance de se beneficiar de suas alterações.

Se um programa priva o usuário de qualquer uma dessas liberdades, ele é classificado como software proprietário ou privativo. Nesse modelo, o desenvolvedor detém o controle sobre o software e, por extensão, sobre o que os usuários podem fazer com ele. No modelo livre, o controle pertence inteiramente aos usuários, individual e coletivamente.

## A Filosofia GNU e Richard Stallman

No final da década de 1970 e início da década de 1980, o ecossistema de computação mudou drasticamente. Softwares que antes eram compartilhados livremente entre cientistas e laboratórios passaram a ser cercados por contratos de confidencialidade e licenças restritivas. Em resposta a essa comercialização que isolava os usuários, Richard Stallman fundou o Projeto GNU em 1983 e, posteriormente, a *Free Software Foundation* (FSF).

O objetivo do projeto era ambicioso: criar um sistema operacional inteiramente livre, de modo que ninguém precisasse usar software proprietário para operar um computador. O nome GNU é um acrônimo recursivo para *"GNU's Not Unix"* (GNU não é Unix), uma homenagem técnica ao sistema que serviu de inspiração arquitetônica, mas cujas restrições de licença a filosofia GNU rejeitava.

Para a filosofia GNU, o compartilhamento de software é um imperativo ético. Negar a alguém o direito de entender ou modificar um programa que ele utiliza é visto como uma violação da autonomia individual e um obstáculo à cooperação social.

## O mecanismo do Copyleft e a GPL

Para garantir que o software livre permanecesse livre, Stallman utilizou as próprias leis de direito autoral (*copyright*) de forma invertida, criando o conceito de *copyleft*.

Em vez de usar o direito autoral para restringir e limitar o uso e a modificação, o copyleft usa a lei para garantir que ninguém possa remover essas liberdades. Sob uma licença com copyleft, qualquer pessoa é livre para modificar e redistribuir o código, desde que a versão modificada seja distribuída sob as mesmas condições de liberdade. Isso impede que uma empresa utilize um código público, faça melhorias e o transforme em um produto fechado e proprietário.

A expressão máxima desse conceito é a GPL (*GNU General Public License*), a licença criada para proteger o sistema GNU. Ela funciona como um pacto legal: você pode usar e modificar o código como quiser, mas se decidir compartilhá-lo, é obrigado a passar adiante as mesmas liberdades que recebeu.

Vale notar que nem toda licença de software livre ou de código aberto exige copyleft. Licenças permissivas, como a MIT e a BSD, também garantem as quatro liberdades, mas não obrigam que versões modificadas sejam redistribuídas sob a mesma licença — o que permite, inclusive, que o código seja incorporado em produtos fechados. Essa distinção entre licenças copyleft e permissivas será retomada em mais detalhe em um capítulo futuro sobre licenciamento.

## O encontro entre o GNU e o Linux

No início da década de 1990, o Projeto GNU já havia desenvolvido quase todas as partes necessárias para um sistema operacional completo: compiladores (GCC), editores de texto, bibliotecas de sistema e interpretadores de comando. Faltava, porém, o componente central que gerencia diretamente o hardware: o núcleo, ou *kernel*.

Esse espaço foi preenchido em 1991, quando um estudante finlandês chamado Linus Torvalds desenvolveu um kernel independente e, posteriormente, o licenciou sob a GPL do GNU. A união das ferramentas de sistema do GNU com o kernel de Torvalds resultou no sistema operacional completo que hoje comumente chamamos de Linux, mas que a FSF e defensores da filosofia original argumentam que deve ser chamado de GNU/Linux.

O kernel gerencia o processador, a memória e os discos; as ferramentas GNU fornecem a interface, os utilitários e o ambiente para o usuário operar o sistema. Nenhum dos dois — kernel ou ferramentas GNU — forma sozinho um sistema completo.

## O ecossistema de desenvolvimento: Livre vs. Código Aberto

Com o passar dos anos, o modelo de desenvolvimento comunitário provou ser extremamente eficiente, atraindo a atenção do mercado corporativo. Em 1998, surgiu o termo *Open Source* (Código Aberto), impulsionado pela *Open Source Initiative* (OSI), criando uma cisão ideológica que persiste até hoje no ecossistema.

O Código Aberto foca nos benefícios metodológicos e econômicos: argumenta que abrir o código resulta em softwares melhores, com menos bugs, desenvolvimento mais rápido e custos reduzidos. É uma abordagem essencialmente pragmática e técnica.

A Filosofia GNU, por outro lado, mantém seu foco no aspecto ético e social. Para a FSF, a eficiência técnica é um benefício secundário; a prioridade absoluta é a liberdade do usuário. Um software proprietário que funciona perfeitamente ainda é considerado um problema moral pela filosofia GNU, pois mantém o usuário em um estado de dependência e submissão ao desenvolvedor.
