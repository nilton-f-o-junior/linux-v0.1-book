# Rede

Uma rede é uma conexão entre dois ou mais dispositivos, com o objetivo de compartilhar dados entre si. O compartilhamento pode ser feito de várias formas:

- **Servidor de arquivos**: um ou mais usuários têm acesso ao conteúdo presente em um disco;
- **Servidor de impressão**: os usuários podem enviar dados para uma impressora na rede;
- **Servidor de internet/intranet**: os usuários têm acesso a páginas hospedadas em uma máquina da rede;
- **Servidor proxy**: os usuários têm acesso à internet.

Todos os acessos podem ser criados e controlados com base nas permissões definidas.

## Protocolo de Rede

Um protocolo de rede é o conjunto de regras usado para permitir a comunicação entre dois ou mais dispositivos — como uma linguagem comum que ambos os lados entendem. O protocolo mais conhecido é o TCP/IP, que passou a ser adotado mundialmente.

### Endereço de IP

O IP é um número usado para identificar um dispositivo dentro de uma rede, de forma parecida com um CPF que identifica uma pessoa.

De modo geral, existem dois contextos de IP:

- O **roteador** possui um IP que o identifica perante a internet (o IP público da sua conexão);
- Cada **dispositivo** dentro da sua rede local (computador, celular, impressora etc.) possui seu próprio endereço para ser identificado dentro dessa rede interna.

### Números

Um endereço IP é formado por quatro grupos de números (octetos), no formato x.x.x.x, onde cada x pode ir de 0 a 255.

Na prática, ao atribuir um endereço a um dispositivo dentro de uma rede, evita-se usar os valores 0 e 255 nos octetos finais, pois eles costumam ter significados especiais — como veremos mais adiante, na seção sobre máscara de rede.

#### Classes de Rede IP

A "classe" define o tamanho de uma rede, com base no valor do primeiro octeto do endereço IP:

| Classe | Primeiro octeto | Exemplo       | Uso típico                              |
|--------|------------------|---------------|------------------------------------------|
| A      | 1 a 126          | 10.0.0.1      | redes gigantes (ex: grandes provedores)   |
| B      | 128 a 191        | 172.16.50.10  | redes médias (ex: universidades)          |
| C      | 192 a 223        | 192.168.1.24  | redes pequenas (ex: casa, escritório)      |
| D      | 224 a 239        | 224.0.0.5     | multicast (ex: streaming para grupos)      |
| E      | 240 a 255        | 240.0.0.1     | reservada, não usada em redes comuns       |

As classes A, B e C são as usadas para identificar dispositivos comuns em uma rede. As classes D e E têm propósitos especiais e não fazem parte do dia a dia de configuração de uma rede doméstica ou de escritório.

##### Faixas privadas

Dentro das classes A, B e C, existem faixas de endereços reservadas exclusivamente para uso em redes privadas (locais), ou seja, que não circulam diretamente pela internet:

- **Classe A privada**: `10.x.x.x`
- **Classe B privada**: `172.16.x.x` a `172.31.x.x`
- **Classe C privada**: `192.168.x.x`

São justamente esses endereços que costumam aparecer nas redes domésticas, atribuídos pelo roteador aos dispositivos conectados.

#### Máscara de Rede

Uma rede conecta diversos dispositivos para que seja possível trocar dados entre si. A máscara de rede é a forma usada para organizar esses endereços, definindo qual parte do IP identifica a rede e qual parte identifica cada dispositivo dentro dela.

- **Porção da Rede** (192.168.110.): a parte do endereço que é fixa para todos os dispositivos daquela rede;
- **Porção do Host** (.24): a parte que muda de dispositivo para dispositivo, possibilitando diferenciar uma máquina da outra;
- **Endereço de Host** (192.168.110.24): a junção das duas porções acima — é o IP completo atribuído a um dispositivo específico da rede;
- **Endereço da Rede** (192.168.110.0): representa a rede como um todo, não um dispositivo específico;
- **Máscara de Rede** (255.255.255.0): define quantos bits do endereço IP pertencem à rede e quantos pertencem ao host;
- **Endereço de Broadcast** (192.168.110.255): usado quando um dispositivo quer enviar uma mensagem para todos os outros dispositivos da rede ao mesmo tempo, em vez de para um host específico.

##### Exemplo prático

Imagine a internet de uma casa comum, onde o roteador distribui a conexão para os dispositivos da família:

```
Internet
│
Roteador (192.168.110.1)
│
├── Ana     (celular)  → 192.168.110.10
├── Carlos  (TV)       → 192.168.110.11
├── Lucia   (notebook) → 192.168.110.12
└── Antonio (tablet)   → 192.168.110.13
```

Nessa rede local:

- Todos os dispositivos compartilham a mesma **porção de rede**: `192.168.110.`
- Cada dispositivo tem sua própria **porção de host**, que o diferencia dos demais: `.1`, `.10`, `.11`, `.12`, `.13`;
- O **endereço da rede** é `192.168.110.0`. Representa a rede em si, e nenhum dispositivo pode usá-lo;
- O **endereço de broadcast** é `192.168.110.255`. Se o roteador precisar enviar um aviso para todos os dispositivos ao mesmo tempo (por exemplo, "a rede vai reiniciar"), ele usa esse endereço, e todos recebem a mensagem simultaneamente.
