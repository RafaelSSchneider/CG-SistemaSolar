# CG-SistemaSolar
Atividade prática de computação gráfica para implementação de um sistema solar com planetas e luas


Etapa 1 — Leitura guiada e diagrama

Tarefa: Em duplas, os alunos fazem um mapa das transformações executadas do Sol → Planeta → Lua.
Produto: Um diagrama simples (papel ou quadro digital) com caixas “Sol”, “Planeta i”, “Lua de i” e setas apontando as transformações.
Etapa 2 — Explanação do fluxo de atualização

![Fluxo Sistema Solar](./Fluxo%20Sistema%20Solar.png)

Tarefa: Identificar onde theta é incrementado, como orbitspeed influencia o movimento, e porque as velocidades das luas podem ser positivas ou negativas (órbita horária/anti-horária). - RAFAEL
Produto: 3–5 bullet points que expliquem update() de Planet e Moon.

* Theta é implementado no método update ao instanciar um objeto (planeta ou lua).
* Orbitspeed influencia a posição do objeto em relação ao plano, indicando a posição dele a cada update.
* As velocidas das luas podem ser positivas ou negativas por a orbita ser em relação ao planeta, sendo a possibilidade disso ser setada através do método random implementado na classe do objeto da lua.
* Update de planet reajusta a sua posição em relação a ao sol indicado por theta (que utiliza orbitspeed) e atualiza a posição da sua lua instanciada 
* Update de Lua reajusta apenas a sua posição a relação ao planeta indicado por theta

Etapa 3 — Extensão

Cada dupla implementa as seguintes modificações preservando a arquitetura:

Planeta com duas luas
Duplicar a composição de Moon em um dos planetas e fazer cada uma ter orbitspeed e distance diferentes. (Extensão direta do padrão proposto no código original.)
Parâmetros visuais
Atribuir cores diferentes aos planetas e tamanhos diferenciados às luas. Manter a coerência com os campos diameter, distance e orbitspeed já presentes nas classes.


Etapa 4 — Relatório

Tarefa: Entregar um README (5–10 linhas) respondendo:
Onde você aplicou pushMatrix()/popMatrix() e por quê?
O que mudaria se invertêssemos rotate() e translate() no planeta ou na lua?
Como garantiu que cada órbita é independente das demais? (composição/atualização separada em update() e uso de matrizes aninhadas)

Sempre antes de alterar a posição de um elemento, como uma lua ou planeta, e  antes de desenhar o sol, para poder alterar a posição que o elemento assumiria ao mudar a posição da matriz de desenho
A distância do elemento em comparação com o seu astro primário aumentaria a cada vez que o draw() fosse rodada, enquanto que ele nunca prosseguiria em sua órbita
Utilizando Programação Orientada a Objetos de maneira que cada elemento se preocupe apenas com seus próprios parâmetros de velocidade e distância de órbita
