# Dispositivos

## Computadores de Uso Geral (Desktop/Laptop)

O hardware é dimensionado para cargas de trabalho variadas, desde tarefas simples como digitar um texto até renderização de vídeos pesados.

- **Arquitetura:** geralmente baseada em *x86/x64* (*Intel* ou *AMD*);

## Dispositivos Móveis (Smartphones/Tablets)

O hardware é otimizado para eficiência energética, priorizando autonomia de bateria sem sacrificar o desempenho em tarefas do dia a dia.

- **Arquitetura:** baseada em *ARM* (*Apple Silicon*, *Qualcomm Snapdragon*, *MediaTek*);

## Servidores

Projetados para disponibilidade contínua e atendimento simultâneo a múltiplos usuários ou sistemas. Ao contrário de um desktop, um servidor raramente tem monitor ou teclado conectado, o acesso é feito remotamente, algo que exploraremos mais adiante ao tratar do protocolo SSH. Ele existe para servir dados, processar requisições e manter serviços no ar ininterruptamente.

- **Arquitetura:** também baseada em *x86/x64* (*Intel Xeon*, *AMD EPYC*), mas com foco em múltiplos núcleos, suporte a grandes quantidades de *RAM* (centenas de GBs) e redundância de componentes. Servidores de nuvem modernos também adotam *ARM* (como os chips *Graviton* da *AWS*);

## Sistemas Embarcados

Um sistema embarcado é um sistema dedicado a executar uma função específica, integrado ao produto final.

- **Microcontroladores** (ex.: *Arduino*, *ESP32*):
  - Em geral, não possuem sistema operacional;
  - O código roda diretamente no hardware (*bare metal*);
  - Consumo de energia baixíssimo, ideais para sensores de temperatura, lâmpadas inteligentes e fechaduras eletrônicas.

- **SBCs (Single-Board Computers)** (ex.: *Raspberry Pi*):
  - São computadores completos construídos em uma única placa, com um microprocessador dedicado;
  - Rodam *Linux* e podem gerenciar tarefas complexas, como reconhecimento facial ou servidores locais.
