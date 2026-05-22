# Dispositivos

## Computadores de Uso Geral (Desktop/Laptop)

São projetados para serem versáteis. O hardware é dimensionado para cargas de trabalho variadas, desde tarefas simples como digitar um texto até renderização de vídeos pesados.

- **Arquitetura:** geralmente baseada em *x86/x64* (*Intel* ou *AMD*);
- **Recursos:** grande quantidade de memória *RAM*, armazenamento expansível, componentes modulares de fácil substituição e atualização, e sistemas operacionais complexos (*Windows*, *macOS*, *Linux*).

## Dispositivos Móveis (Smartphones/Tablets)

Projetados para portabilidade e consumo de conteúdo. O hardware é otimizado para eficiência energética, priorizando autonomia de bateria sem sacrificar o desempenho em tarefas do dia a dia.

- **Arquitetura:** baseada em *ARM* (*Apple Silicon*, *Qualcomm Snapdragon*, *MediaTek*);
- **Recursos:** memória *RAM* limitada (4–16 GB), armazenamento em memória flash (tecnologia NAND), geralmente não expansível, telas sensíveis ao toque e sistemas operacionais compactos (*iOS*, *Android*).

## Servidores

Projetados para disponibilidade contínua e atendimento simultâneo a múltiplos usuários ou sistemas. Ao contrário de um desktop, um servidor raramente tem monitor ou teclado conectado, o acesso é feito remotamente, pela rede, algo que exploraremos mais adiante ao tratar do protocolo SSH. Ele existe para servir dados, processar requisições e manter serviços no ar ininterruptamente.

- **Arquitetura:** também baseada em *x86/x64* (*Intel Xeon*, *AMD EPYC*), mas com foco em múltiplos núcleos, suporte a grandes quantidades de *RAM* (centenas de GBs) e redundância de componentes. Servidores de nuvem modernos também adotam *ARM* (como os chips *Graviton* da *AWS*);
- **Recursos:** memória *ECC* (com correção de erros), armazenamento em *RAID* para tolerância a falhas, múltiplas fontes de energia e sistemas operacionais voltados para estabilidade (*Linux Server*, *Windows Server*).

## Sistemas Embarcados (Embedded Systems)

É aqui que entram o *Arduino*, *ESP32* e *Raspberry Pi*. Um sistema embarcado é um sistema dedicado a executar uma função específica, integrado ao produto final.

- **Microcontroladores** (ex.: *Arduino*, *ESP32*):
  - Em geral, não possuem sistema operacional;
  - O código roda diretamente no hardware (*Bare Metal*);
  - Consumo de energia baixíssimo, ideais para sensores de temperatura, lâmpadas inteligentes e fechaduras eletrônicas.

- **SBCs (Single-Board Computers)** (ex.: *Raspberry Pi*):
  - São computadores completos construídos em uma única placa, com um microprocessador dedicado;
  - Rodam *Linux* e podem gerenciar tarefas complexas, como reconhecimento facial ou servidores locais.
