# Licenças de Software

O software livre é definido pelas liberdades que sua licença garante ao usuário. Por isso, é preciso entender quais licenças existem e como cada uma equilibra os direitos do autor com os direitos de quem usa, modifica e redistribui o código. No ecossistema Linux, onde centenas de licenças convivem no mesmo sistema, essa distinção tem consequências práticas todos os dias.

## Por que licenças existem?

Sem uma licença explícita, o código-fonte é protegido automaticamente pelas leis de direito autoral. Mesmo que o autor publique o código em um repositório público, sem uma licença ninguém tem o direito legal de usar, modificar ou redistribuir. A licença existe para resolver esse problema: ela é uma declaração pública do autor sobre o que qualquer pessoa pode fazer com o código, sob quais condições, e o que acontece se alguém descumprir essas condições.

A escolha da licença não é trivial. Ela afeta diretamente quais projetos podem usar seu código, como empresas podem incorporá-lo em produtos comerciais, e se uma versão modificada precisa ser devolvida à comunidade. Dois projetos com código quase idêntico podem ter impactos radicalmente diferentes dependendo da licença escolhida.

## Licenças permissivas

### MIT

A MIT é a licença permissiva mais curta e mais utilizada do mundo. Seu texto completo cabe em poucos parágrafos e se resume a uma única restrição real: manter o aviso de copyright e a licença MIT em todas as cópias ou partes substanciais do código. Ela não impede o uso comercial, não exige abertura de código derivado, e não oferece proteção contra patentes, mas com menos proteção jurídica do que alternativas mais robustas.

### Apache 2.0

A Apache 2.0 oferece tudo que a MIT oferece, mas adiciona uma proteção importante: uma cláusula explícita de concessão de patentes. Quando alguém contribui com código sob Apache 2.0, ele concede aos usuários uma licença irrevogável para quaisquer patentes que aquele código possa infringir. Isso reduz o risco de um usuário ser processado por violação de patente ao usar o software, uma preocupação real em projetos de grande escala e em ambientes corporativos. A desvantagem é que o texto é mais longo e complexo, o que pode ser uma barreira para projetos pequenos.

### BSD

A BSD (*Berkeley Software Distribution*) existe em duas variantes principais: a 2-Clause e a 3-Clause. A 2-Clause é praticamente equivalente à MIT. A 3-Clause adiciona uma restrição adicional: proíbe o uso do nome dos autores originais para promover produtos derivados sem autorização. Isso implica que uma empresa não pode usar o nome do projeto original para dar credibilidade ao seu próprio produto.

### ISC

A ISC (*Internet Systems Consortium*) é funcionalmente equivalente à MIT, mas escrita de forma ainda mais concisa. Ela é comum em software de infraestrutura de rede, de onde a organização que a criou tem origem.

## Licenças copyleft

### GPL 

A GPL (*GNU General Public License*) é a expressão máxima do conceito de copyleft. Criada por Richard Stallman para proteger o sistema GNU, ela funciona como um contrato irrevogável: você pode usar e modificar o código como quiser, mas ao redistribuir, é obrigado a passar adiante as mesmas liberdades que recebeu.

A versão mais utilizada hoje é a GPLv3, que adiciona proteção contra patentes e contra a chamada *tivoização*, que é o bloqueio de hardware que impede o usuário de executar versões modificadas do software.

A GPLv2, por sua vez, continua sendo usada pelo kernel Linux, que não adotou a v3 por razões práticas: dificuldade de obter consentimento de milhares de contribuidores para trocar de licença e até por por discordâncias com algumas cláusulas adicionadas na versão 3.

### LGPL

A LGPL (*Lesser General Public License*) é uma versão mais flexível da GPL, projetada para bibliotecas de software. Ela exige que modificações na própria biblioteca sejam distribuídas sob LGPL, mas permite que programas que usam a biblioteca sejam distribuídos como proprietários. Isso permite que uma biblioteca livre seja usada por software proprietário, ampliando sua adoção sem comprometer a liberdade do código da biblioteca em si.

### AGPL

A AGPL (*Affero General Public License*) estende a GPL para o contexto de SASS (software como serviço). Em uma GPL comum, o copyleft só se aplica quando o software é distribuído, quando o binário ou código-fonte é enviado a alguém. Se o software roda em um servidor e os usuários interagem apenas pela rede, a GPL tradicional não é acionada. A AGPL fecha essa brecha: se o software é acessado remotamente, o operador é obrigado a oferecer o código-fonte aos usuários.

## Licenças com copyleft por arquivo

### MPL 2.0

A MPL 2.0 (*Mozilla Public License*) adota um modelo de copyleft por arquivo: as modificações feitas em arquivos que já existiam na MPL precisam ser redistribuídas sob MPL, mas código novo adicionado ao projeto pode usar outra licença. Isso permite combinar código MPL com código proprietário no mesmo projeto, desde que os arquivos originais permaneçam abertos. É uma alternativa popular entre quem quer copyleft sem a rigidez da GPL.

## Licenças de domínio público

### Unlicense e CC0

O Unlicense e o CC0 (*Creative Commons Zero*) são licenças dedicadas ao domínio público. Elas renunciam todos os direitos autorais do autor, colocando o código à disposição de qualquer pessoa para qualquer uso, sem condição alguma. São ideais para utilitários pequenos, exemplos de código e projetos onde o autor não deseja nenhuma restrição. O CC0, como veremos adiante na seção sobre Creative Commons, também é usado fora do contexto de software, para dedicar outros tipos de obra ao domínio público.

## Licenças proprietárias

### EULA

A EULA (*End-User License Agreement*) é o modelo padrão do software proprietário. Ela define o que o usuário pode fazer com o software pronto e apenas nas condições impostas pelo fabricante. A maioria dos sistemas operacionais comerciais, softwares de escritório e jogos usa esse modelo.

## Licenças além do software

Os conceitos de licenciamento se estendem muito além do código-fonte, e cada tipo de criação tem seu próprio conjunto de licenças adequadas, pois os direitos autorais e as regulamentações variam conforme o tipo de obra.

### Creative Commons

A família de licenças CC (*Creative Commons*) é o padrão para criações artísticas e culturais: textos, imagens, vídeos, áudios e músicas. Cada variante combina diferentes condições, sendo elas: atribuição (*BY*), compartilhamento igual (*SA*), uso não-comercial (*NC*) e derivações não permitidas (*ND*), resultando em combinações como CC-BY, CC-BY-SA e CC-BY-NC.

### Documentação e manuais

A GFDL (*GNU Free Documentation License*) foi criada para documentação de software livre e foi historicamente usada pela Wikipédia, que hoje adota principalmente a CC BY-SA, mantendo a GFDL apenas para conteúdo legado. Ela garante que o conteúdo documental permaneça aberto e modificável, seguindo princípios semelhantes aos da GPL, mas adaptados para textos e manuais.

### Fontes tipográficas

A SIL OFL (*Open Font License*) é o padrão para fontes tipográficas livres, amplamente adotada em repositórios de fontes de código aberto. Ela permite usar, modificar e redistribuir fontes, desde que a fonte modificada não seja renomeada e protegendo a identidade do projeto original.

### Hardware

O hardware segue lógica diferente do software, porque envolve componentes físicos e processos de fabricação. A CERN OHL (*Open Hardware Licence*) e a TAPR OHL são licenças projetadas para projetos de hardware livre, cobrindo desde placas de circuito impresso até designs mecânicos.

### Dados abertos

Os conjuntos de dados: bases de informações, dados estatísticos, registros científicos, possuem licenças próprias. O ODC (*Open Data Commons*) oferece licenças como a ODbL e a PDDL, projetadas para garantir que dados permaneçam abertos e reutilizáveis, independentemente do formato ou do domínio.

## Como escolher uma licença?

A escolha de uma licença depende do objetivo do projeto. Para maximizar a adoção e permitir o uso em qualquer contexto, incluindo produtos proprietários, licenças permissivas como MIT ou Apache 2.0 são a escolha natural.

Para garantir que todas as versões do software permaneçam livres, a GPL é o mecanismo mais forte disponível.

Para projetos híbridos que precisam de flexibilidade parcial, a MPL ou a LGPL oferecem caminhos intermediários. Não existe licença "melhor",existe a licença mais adequada para o que o autor pretende proteger e para como ele deseja que o código seja usado.
