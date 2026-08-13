# Armazenamento

A memória RAM, vista anteriormente, é rápida mas volátil: perde tudo quando a energia cai. O armazenamento é o oposto. É persistente, os dados ficam gravados mesmo sem energia, e é onde o sistema coloca tudo que precisa sobreviver entre uma sessão e outra: o próprio sistema operacional, os programas instalados, os arquivos do usuário.

## SSD 

O SSD não tem partes móveis. Armazena dados em chips de memória flash, a mesma tecnologia base usada em celulares e câmeras, mas em versões otimizadas para desempenho e durabilidade.

### NVMe: SSDs ainda mais rápidos

Dentro do universo dos SSDs existe uma distinção importante de interface. SSDs mais antigos e mais baratos usam a interface SATA, a mesma criada originalmente para os HDs. Ela funciona bem, mas é um gargalo para os chips modernos de memória flash.

Os SSDs **NVMe** (*Non-Volatile Memory Express*) conectam-se diretamente ao processador por meio do barramento PCIe, eliminando esse gargalo. A diferença em velocidade é expressiva e cresce a cada nova geração do PCIe: um SSD SATA lê dados a cerca de 500 MB/s, enquanto um NVMe pode ultrapassar tranquilamente os 3.000 MB/s.

## HD

O HD é mais barato de se produzir e capaz de armazenar grandes volumes de dados, mas é limitado pela velocidade da mecânica. Cada leitura depende de o prato estar na posição certa e de o braço chegar até lá. Em tarefas que exigem muitos acessos pequenos e espalhados pelo disco, como iniciar o sistema operacional, esse tempo de busca se acumula e se torna perceptível.

### Armazenamento em servidores

#### RAID

Um servidor que guarda dados importantes raramente confia em um único disco. O **RAID** (*Redundant Array of Independent Disks*) é uma técnica que combina múltiplos discos para funcionar como uma unidade só. Cada configuração equilibra de forma diferente velocidade, redundância e capacidade útil:

- **RAID 0:** os dados são divididos entre dois ou mais discos, o que aumenta a velocidade de leitura e escrita.
  - Não há redundância, se um disco falhar, todos os dados são perdidos;
  - Usado quando desempenho importa mais que segurança.

- **RAID 1:** cada dado é escrito simultaneamente em dois discos.
  - Se um falhar, o outro continua operando sem interrupção;
  - A capacidade útil é metade do total, pois tudo é duplicado.

- **RAID 5:** os dados e informações de paridade são distribuídos entre três ou mais discos.
  - Permite reconstruir o conteúdo caso um único disco seja perdido;
  - Equilibra redundância e aproveitamento de espaço.

- **RAID 10 (1+0):** combina espelhamento e divisão de dados, exigindo no mínimo quatro discos.
  - É ao mesmo tempo rápido e redundante;
  - Usa metade da capacidade total para espelhamento.

#### Armazenamento em rede

Em ambientes corporativos ou de nuvem, o armazenamento frequentemente não está na mesma máquina que o sistema que o usa. Dois protocolos dominam esse cenário.

- **NAS (*Network Attached Storage*):** expõe o armazenamento pela rede como se fosse um sistema de arquivos comum: o servidor acessa pastas remotas da mesma forma que acessaria um disco local. É simples de configurar e suficiente para muitos cenários;
 
- **SAN (*Storage Area Network*):** cria uma rede dedicada exclusivamente ao tráfego de armazenamento, separada da rede comum de dados. O servidor enxerga o armazenamento remoto como se fosse um disco diretamente conectado. É uma solução mais complexa e cara, usada em ambientes que exigem altíssimo desempenho e baixa latência, como bancos de dados críticos e sistemas financeiros.

### Particionamento de disco

Um disco físico, seja ele um SSD ou um HD, chega ao sistema como um bloco bruto. Antes de guardar qualquer dado, esse espaço precisa ser organizado. O particionamento é o processo de dividir esse bloco em regiões independentes e propósito definidos.

Para o sistema operacional, cada partição aparece como um dispositivo separado. Um único disco de 1 TB pode se comportar como se fossem dois ou três discos menores, cada um com seu próprio sistema de arquivos, suas próprias permissões e sua própria função.

#### Por que particionar?

A razão mais imediata é separação de responsabilidades. Em um servidor Linux, é comum isolar o sistema operacional em uma partição, os dados dos usuários em outra e os logs do sistema em uma terceira. Se os logs crescerem sem controle e preencherem o disco, apenas a partição deles é afetada. O sistema continua funcionando, e os dados dos usuários permanecem intactos.

Em desktops com *dual boot* (dois sistemas operacionais no mesmo computador), o particionamento é o que permite que Windows e Linux coexistam sem interferência, cada sistema vive em sua própria região do disco e não enxerga o território do outro.

Além das partições de sistema operacional e dados, existem partições com propósitos especiais, como a partição *swap*, usada pelo Linux como extensão da memória RAM em momentos de aperto. 

#### Sistemas de arquivos

Criar uma partição é apenas o primeiro passo. Para que o sistema operacional consiga gravar e ler dados nela, é preciso formatá-la com um sistema de arquivos, uma estrutura que define como arquivos são nomeados, organizados e localizados dentro daquele espaço.

- O Windows usa NTFS como padrão em partições de sistema, com suporte a permissões detalhadas, arquivos grandes e *journaling* (mecanismo que registra operações pendentes e permite recuperar o estado consistente do disco após uma queda de energia abrupta).

- O Linux adota por padrão o ext4 na maioria das distribuições, com características similares e décadas de refinamento. O Btrfs é outra opção que ganha adoção em distribuições mais recentes.
