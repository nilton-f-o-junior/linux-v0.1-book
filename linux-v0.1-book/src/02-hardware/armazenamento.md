# Armazenamento

Antes de ligar o computador, antes de o sistema operacional existir em memória, antes de qualquer processo rodar, há um lugar onde tudo está guardado permanentemente: o dispositivo de armazenamento. É nele que o sistema operacional vive quando o computador está desligado, e é de lá que ele é carregado toda vez que a máquina é iniciada.

## O que é armazenamento?

A memória RAM, vista anteriormente, é rápida mas volátil: perde tudo quando a energia cai. O armazenamento é o oposto. É persistente, os dados ficam gravados mesmo sem energia, e é onde o sistema coloca tudo que precisa sobreviver entre uma sessão e outra: o próprio sistema operacional, os programas instalados, os arquivos do usuário.

Dois tipos dominam esse papel nos computadores modernos.

### SSD — Solid State Drive

O SSD não tem partes móveis. Armazena dados em chips de memória flash, a mesma tecnologia base usada em celulares e câmeras, mas em versões otimizadas para desempenho e durabilidade.

Sem braços mecânicos, sem pratos girando, o acesso a qualquer ponto do armazenamento é quase instantâneo. Um computador com SSD inicializa o sistema operacional em segundos. Programas abrem antes de o usuário piscar.

- Vantagens: velocidade muito superior ao HD, resistente a impactos, silencioso e com menor consumo de energia;
- Desvantagens: custo por gigabyte mais alto que o HD, embora essa diferença venha caindo progressivamente nos últimos anos;
- Uso típico: sistema operacional, programas e qualquer dado que se beneficie de acesso rápido.

### NVMe: SSDs ainda mais rápidos

Dentro do universo dos SSDs existe uma distinção importante de interface. SSDs mais antigos e mais baratos usam a interface SATA, a mesma criada originalmente para os HDs. Ela funciona bem, mas é um gargalo para os chips modernos de memória flash.

Os SSDs NVMe (Non-Volatile Memory Express) conectam-se diretamente ao processador por meio do barramento PCIe, eliminando esse gargalo. A diferença em velocidade é expressiva: onde um SSD SATA lê dados a cerca de 500 MB/s, um NVMe pode ultrapassar os 7.000 MB/s nos modelos mais rápidos. No uso do dia a dia a diferença é menos dramática do que os números sugerem, mas em tarefas intensas como edição de vídeo, compilação de código ou movimentação de arquivos grandes, ela aparece.

### HD — Hard Disk Drive

O HD é a tecnologia mais antiga ainda em uso comum. Dentro da carcaça metálica há pratos magnéticos girando em alta velocidade, normalmente entre 5.400 e 7.200 rotações por minuto, e um braço mecânico com uma cabeça de leitura e escrita que se move sobre eles para acessar os dados.

Esse mecanismo físico é o que define o HD: barato para produzir, capaz de armazenar grandes volumes de dados, mas limitado pela velocidade da mecânica. Cada leitura depende do prato estar na posição certa e do braço chegar até lá. Em tarefas que exigem muitos acessos pequenos e espalhados pelo disco, como iniciar o sistema operacional, esse tempo de busca se soma e fica perceptível.

- Vantagens: custo por gigabyte muito baixo, ideal para armazenar grandes volumes de dados;
- Desvantagens: mais lento, sensível a impactos físicos (a mecânica interna pode ser danificada), e consome mais energia;
- Uso típico: armazenamento em massa, backups, arquivos que não precisam de acesso rápido.

### Armazenamento em servidores

Em servidores, o armazenamento deixa de ser apenas o lugar onde o sistema vive e passa a ser uma peça crítica de infraestrutura. A prioridade não é o conforto do usuário, mas disponibilidade contínua, integridade dos dados e capacidade de escalar conforme a demanda cresce.

#### RAID

Um servidor que guarda dados importantes raramente confia em um único disco. O RAID (Redundant Array of Independent Disks) é uma técnica que combina múltiplos discos para funcionar como uma unidade só. Cada configuração equilibra de forma diferente velocidade, redundância e capacidade útil:

- RAID 0: os dados são divididos entre dois ou mais discos, o que aumenta a velocidade de leitura e escrita. Não há redundância: se um disco falhar, todos os dados são perdidos. Usado quando desempenho importa mais que segurança;

- RAID 1: cada dado é escrito simultaneamente em dois discos. Se um falhar, o outro continua operando sem interrupção. A capacidade útil é metade do total, pois tudo é duplicado;

- RAID 5: os dados e informações de paridade são distribuídos entre três ou mais discos. Permite reconstruir o conteúdo caso um único disco seja perdido, equilibrando redundância e aproveitamento de espaço;

- RAID 10 (1+0): combina espelhamento e divisão de dados, exigindo no mínimo quatro discos. É ao mesmo tempo rápido e redundante, ao custo de usar metade da capacidade total para espelhamento.

O resultado prático é que um servidor bem configurado pode perder um disco físico no meio da operação e continuar servindo dados normalmente, enquanto o disco defeituoso é substituído.

#### Armazenamento em rede

Em ambientes corporativos ou de nuvem, o armazenamento frequentemente não está na mesma máquina que o sistema que o usa. Dois protocolos dominam esse cenário.

- O NAS (Network Attached Storage) expõe o armazenamento pela rede como se fosse um sistema de arquivos comum: o servidor acessa pastas remotas da mesma forma que acessaria um disco local. É simples de configurar e suficiente para muitos cenários.

- O SAN (Storage Area Network) vai além: cria uma rede dedicada exclusivamente ao tráfego de armazenamento, separada da rede comum de dados. O servidor enxerga o armazenamento remoto como se fosse um disco diretamente conectado. É uma solução mais complexa e cara, usada em ambientes que exigem altíssimo desempenho e baixa latência, como bancos de dados críticos e sistemas financeiros.

#### A escala da nuvem

Provedores como AWS, Google Cloud e Azure abstraem toda essa complexidade em serviços gerenciados. O sistema operacional de uma instância de servidor na nuvem geralmente reside em um volume virtual, como o EBS da AWS, que por baixo dos panos é armazenamento em rede com redundância automática, sem que o administrador precise configurar RAID ou gerenciar discos físicos manualmente.

Essa abstração tem um custo: menos controle direto. Mas também tem uma vantagem clara: um volume pode ser ampliado, movido ou replicado para outra região geográfica com poucos comandos, algo impraticável com hardware físico.

### Particionamento de disco
