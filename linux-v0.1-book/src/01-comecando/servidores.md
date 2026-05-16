# Servidores

Se os SOs de *desktop* e *mobile* focam na experiência do usuário, os de servidor têm outra prioridade: estabilidade, desempenho contínuo e gerenciamento de recursos, muitas vezes sem nem ter uma tela conectada.

## Linux Server (várias distribuições)

De longe o mais usado no mundo dos servidores. Estima-se que mais de 90% da infraestrutura da internet rode sobre ele.

- **Foco:** estabilidade, leveza e controle total;
- **Vantagens:** gratuito (na maioria das distros), extremamente confiável, capaz de rodar por anos sem reinicialização e com suporte massivo da comunidade e da indústria. É o ambiente nativo de tecnologias como *Docker*, *Kubernetes* e da maioria das linguagens de programação modernas;
- **Ponto fraco:** administração feita majoritariamente por linha de comando, o que exige conhecimento técnico.

## Windows Server (Microsoft)

A versão do *Windows* voltada para ambientes corporativos.

- **Foco:** integração com o ecossistema *Microsoft* e facilidade para equipes de TI corporativas;
- **Vantagens:** interface gráfica familiar, integração nativa com *Active Directory*, *Exchange* e outros produtos *Microsoft*. Muito usado em grandes empresas que já dependem do ecossistema *Windows*;
- **Ponto fraco:** pago, com licenciamento caro, e consome mais recursos que o *Linux* para tarefas equivalentes.

## Unix e derivados (FreeBSD, Solaris)

Os "ancestrais" dos servidores modernos, ainda presentes em nichos muito específicos.

- **Foco:** robustez extrema e confiabilidade em ambientes críticos;
- **Onde aparecem:** infraestrutura bancária, telecomunicações e sistemas legados de grande porte;
- **Ponto fraco:** comunidade menor e ecossistema mais restrito que o *Linux* atual.

## Hipervisores e Virtualização

Tecnicamente não são sistemas operacionais "tradicionais", mas merecem menção: são a base da computação em nuvem e da virtualização.

- **Foco:** rodar múltiplos sistemas operacionais simultaneamente em um único hardware físico;
- **Vantagens:** permite isolar ambientes, aproveitar melhor o hardware e criar máquinas virtuais sob demanda;
- **Ponto fraco:** adiciona uma camada de complexidade e requer hardware robusto.
