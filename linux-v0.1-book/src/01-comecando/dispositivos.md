# Dispositivos

## Computadores de Uso Geral (Desktop/Laptop)

São projetados para ser versáteis. O hardware é robusto o suficiente para realizar
desde tarefas simples (digitar um texto) até renderização de vídeos pesados.

- **Arquitetura:** geralmente baseada em *x86/x64* (*Intel* ou *AMD*);
- **Recursos:** grande quantidade de memória *RAM*, armazenamento expansível e
  sistemas operacionais complexos (*Windows*, *macOS*, *Linux*).

## Dispositivos Móveis (Smartphones/Tablets)

Projetados para portabilidade e consumo de conteúdo. O hardware é otimizado para
eficiência energética, priorizando autonomia de bateria sem sacrificar o desempenho
em tarefas do dia a dia.

- **Arquitetura:** baseada em *ARM* (*Apple Silicon*, *Qualcomm Snapdragon*, *MediaTek*).
  Integra CPU, GPU, NPU e modem em um único chip (*SoC* — *System on a Chip*);
- **Recursos:** memória *RAM* limitada (4–16 GB), armazenamento não expansível
  (*flash NAND*), telas sensíveis ao toque e sistemas operacionais compactos (*iOS*, *Android*).

## Sistemas Embarcados (Embedded Systems)

É aqui que entram o *Arduino*, *ESP32* e *Raspberry Pi*. Um sistema embarcado é um
computador "escondido" dentro de um produto para realizar uma função específica.

- **Microcontroladores** (ex.: *Arduino*, *ESP32*):
  - Não possuem sistema operacional;
  - O código roda diretamente no hardware (*Bare Metal*);
  - Consumo de energia baixíssimo, ideais para sensores de temperatura,
    lâmpadas inteligentes e fechaduras eletrônicas.

- **Microprocessadores/SBCs** (ex.: *Raspberry Pi*):
  - São computadores completos em uma placa única (*Single-Board Computer*);
  - Rodam *Linux* e podem gerenciar tarefas complexas, como reconhecimento
    facial ou servidores locais.

## Servidores

Projetados para disponibilidade contínua e atendimento simultâneo a múltiplos
usuários ou sistemas. Ao contrário de um desktop, um servidor raramente tem monitor
ou teclado conectado, ele existe para servir dados, processar requisições e manter
serviços no ar 24 horas por dia, 7 dias por semana.

- **Arquitetura:** também baseada em *x86/x64* (*Intel Xeon*, *AMD EPYC*), mas com
  foco em múltiplos núcleos, suporte a grandes quantidades de *RAM* (centenas de GBs)
  e redundância de componentes. Servidores de nuvem modernos também adotam *ARM*
  (como os chips *Graviton* da *AWS*);
- **Recursos:** memória *ECC* (com correção de erros), armazenamento em *RAID* para
  tolerância a falhas, múltiplas fontes de energia e sistemas operacionais voltados
  para estabilidade (*Linux Server*, *Windows Server*).
