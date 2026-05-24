# Memória RAM

Quando você abre um navegador, um editor de texto e um player de música ao mesmo tempo, há algo no computador equilibrando tudo isso sem que você precise pensar no assunto. Esse algo é a memória RAM.

RAM significa *Random Access Memory*, memória de acesso aleatório. O nome descreve sua característica mais importante: qualquer posição de memória pode ser lida ou escrita diretamente, em tempo constante, sem precisar percorrer o conteúdo do início até chegar ao dado desejado, como acontece em uma fita magnética.

## O que ela faz

A RAM funciona como a mesa de trabalho do computador. O armazenamento, seja um SSD ou HD, é onde os dados ficam guardados permanentemente, como arquivos em uma gaveta. Mas para trabalhar com eles, o sistema operacional os traz para a RAM, onde o processador pode acessá-los com velocidade muito maior.

A diferença de velocidade é brutal. Um SSD moderno lê dados a cerca de 5 GB/s. A RAM opera na faixa de 40 a 80 GB/s. O processador, por sua vez, usa memórias internas ainda mais rápidas, chamadas caches, porém com capacidade muito pequena, medida em megabytes. A RAM vive nesse meio-termo: rápida o suficiente para não travar o processador, grande o suficiente para manter vários programas abertos simultaneamente.

## Volátil por natureza

A característica que define a RAM é sua volatilidade: ela perde todo o conteúdo quando a energia é cortada. Não é uma limitação acidental, é consequência direta de como ela é construída. Cada bit é armazenado como uma carga elétrica em um capacitor minúsculo. Sem corrente elétrica contínua, essa carga se dissipa e a informação desaparece. A RAM dos computadores é do tipo dinâmica, conhecida como DRAM, justamente por precisar ser constantemente atualizada para manter os dados.

É por isso que ao desligar o computador, o que estava aberto some, e ao ligá-lo novamente, o sistema operacional precisa ser carregado do armazenamento de volta para a memória. O SSD lembra; a RAM esquece.

## DDR: gerações e velocidade

Além da volatilidade, outro aspecto importante da RAM é como ela evoluiu ao longo do tempo em termos de velocidade e capacidade. A RAM moderna segue o padrão DDR, *Double Data Rate*, que transfere dados duas vezes por ciclo de clock, dobrando a largura de banda sem precisar dobrar a frequência. Cada geração traz maior velocidade, menor consumo de energia e incompatibilidade física com a geração anterior: os encaixes são diferentes propositalmente para evitar instalar o módulo errado na placa-mãe.

As gerações mais relevantes hoje são a DDR4 e a DDR5. A DDR4 dominou os computadores da segunda metade da década de 2010 e ainda é comum. A DDR5, lançada em 2021, oferece largura de banda substancialmente maior e suporte a capacidades por módulo muito mais altas, mas exige plataformas mais recentes.

Em dispositivos móveis, a RAM segue padrões próprios como LPDDR (*Low Power DDR*), otimizados para consumo de energia reduzido, essencial quando a bateria é o único recurso disponível.

## Quanto é suficiente?

A resposta depende do uso, mas alguns parâmetros práticos ajudam a calibrar a expectativa:

- **4 GB** é o mínimo funcional hoje, suficiente para tarefas simples em distribuições Linux leves, mas apertado para uso geral;
- **8 GB** era o padrão razoável por anos, ainda funciona para uso cotidiano moderado, mas começa a ficar limitado com navegadores modernos e muitas abas abertas;
- **16 GB** é o ponto confortável para desenvolvimento de software, edição de imagens e múltiplas abas abertas;
- **32 GB ou mais** é território de edição de vídeo, virtualização, workstations e servidores.

No Linux, o consumo base de RAM varia bastante conforme o ambiente gráfico escolhido. Um sistema com XFCE ou LXQt pode iniciar usando menos de 500 MB; o GNOME com extensões ativas pode facilmente ocupar mais de 1,5 GB só na área de trabalho, antes de qualquer aplicativo ser aberto.

## Memória virtual e swap

Quando a RAM se esgota, o sistema operacional recorre a um mecanismo de emergência: o *swap*. Uma parte do armazenamento em disco é usada como extensão da memória, movendo dados menos usados para lá e liberando espaço na RAM para o que está sendo processado.

O custo é pesado. Acessar dados no swap significa acessar o disco, que mesmo sendo um SSD rápido, é significativamente mais lento que a RAM. O sistema começa a travar e os programas ficam lentos. É o sinal clássico de que a memória instalada não é suficiente para a carga de trabalho em questão.

No Linux, o swap pode ser configurado como uma partição dedicada ou como um arquivo dentro do sistema de arquivos comum. Distribuições modernas como o Ubuntu configuram um arquivo de swap por padrão, o que facilita ajustes sem reparticionar o disco.
