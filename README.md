#   🎬 Franchise Graphics  🎥

Projeto desenvolvido para praticar os conceitos de criação de matrizes(incidência, similiaridade e coocorrência), criação de grafos(incidência, similiaridade e coocorrência) e cálculo de métricas topológicas para cada um dos grafos, uitlizando a linguagem R, analisando dados a partir de um dataset sobre franquias.

---

## 🎯 Objetivo

* Criar um dataset sobre quais são as franquias e universos famosos do entretenimento que os alunos da sala mais gostam.
* A partir do dataset, gerar matriz de incidência, similaridade e de coocorrência
* A partir das matrizes, criar grafos de incidência, similaridade e coocorrência, além de calcular as métricas topológicas para cada um dos grafos.

Tudo isso utilizando a linguagem de programação R para implementar toda a lógica do projeto.

---

## ⚙️ Tecnologia e ferramenta utilizada

* R
* RStudio

---

## 🧩 Arquitetura e Organização do Projeto

| Pasta / Arquivo | Responsabilidade Principal |
| :--- | :--- |
franchise-graphics/ 
├─ codigo/ | # Pasta contendo o código da lógica do projeto para criar as matrizes, grafos e métricas topológicas |
│ └─ 01_incidencia_simone.R  | # Arquivo contendo toda a parte lógica de criação de matriz e grafo de incidência |
│ └─ 02_similaridade_maisa.R | # Arquivo contendo toda a parte lógica de criação de matriz e grafo de similiaridade |
| └─ 03_coocorrencia_samara.R | # Arquivo contendo toda a parte lógica de criação de matriz e grafo de coocorrência |
| └─ 04_metricas_jenie.R | # Arquivo contendo toda a parte lógica para o cálculo das métricas topológicas de cada grafo obtido |
├─ dataset/ | # Pasta contendo o dataset do projeto |
│ └─ franquias.csv  | # Dataset de franquias e universos usado para realizar a criação das matrizes, grafos e métricas topológicas, com base em seus dados |
├─ grafos | # Pasta contendo o demonstrativo dos grafos obtidos a partir das matrizes obtidas por meio dos dados do dataset |
| └─ grafo_coocorrencia.png | # Grafo de coocorrência |
| └─ grafo_incidencia.png | # Grafo de incidência |
| └─ grafo_similaridade.png | # Grafo de similiaridade
├─  matrizes/ | # Pasta contendo o demonstrativo das matrizes obtidas por meio dos dados do dataset |
| └─ matriz_coocorrencia.csv | # Matriz de coocorrência |
| └─ matriz_incidencia.csv | # Matriz de incidência |
| └─ matriz_similaridade.csv | # Matriz de similiaridade |

---

## 🧠 Conceitos Aplicados

### * Análise de dados de um dataset;
### * Criação de matrizes (incidência, similiaridade e coocorrência);
### * Criação de grafos (incidência, similiaridade e coocorrência);
### * Cálculo das métricas topológicas dos grafos;
### * Utilização da linguagem de programação R para codificar a parte lógica para o desenvolvimento do projeto.

---

## 💻 Demonstrativo

## Matrizes

### Matriz de Incidência
                 to
from               Crepúsculo DC Game of Thrones Harry Potter Marvel Senhor dos Anéis Star Wars
  André                     0  0               0            1      1                0         0
  Daniel                    0  0               0            1      1                0         0
  Dorce                     1  1               1            1      1                0         1
  Estevão Alves             0  0               0            1      0                0         0
  Felipe Garcia             1  1               1            1      1                1         1
  Gustavo Henrique          0  1               0            1      1                0         0
  Jênie                     0  0               1            1      1                0         0
  João Victor               0  0               1            1      0                1         0
  Joaquim                   0  1               1            0      0                1         0
  Maisa                     0  0               0            1      1                0         0
  Matheus                   0  1               0            0      0                0         0
  Rayssa                    1  1               0            0      0                0         1
  Rodrigo                   0  0               0            0      0                0         0
  Samara                    0  1               0            0      1                0         0
  Simone                    0  0               1            1      1                0         0
  Thiago Aoki               0  0               0            0      0                0         1
  Thierry                   0  0               0            0      1                0         0
  Vinícius                  0  0               0            0      1                0         0
  Zé Vitor                  0  1               1            1      1                1         1
                  to
from               The Hunger Games Velozes e Furiosos
  André                           1                  0
  Daniel                          0                  1
  Dorce                           0                  0
  Estevão Alves                   0                  0
  Felipe Garcia                   1                  1
  Gustavo Henrique                1                  0
  Jênie                           0                  0
  João Victor                     1                  1
  Joaquim                         0                  0
  Maisa                           0                  0
  Matheus                         0                  0
  Rayssa                          0                  0
  Rodrigo                         0                  1
  Samara                          0                  1
  Simone                          1                  1
  Thiago Aoki                     0                  0
  Thierry                         0                  0
  Vinícius                        0                  0
  Zé Vitor                        1                  1

### Matriz de similiaridade
                   André Daniel Dorce Estevão Alves Felipe Garcia Gustavo Henrique Jênie João Victor
André             1.00   0.50  0.29          0.33          0.33             0.75  0.50        0.33
Daniel            0.50   1.00  0.29          0.33          0.33             0.40  0.50        0.33
Dorce             0.29   0.29  1.00          0.17          0.67             0.43  0.50        0.22
Estevão Alves     0.33   0.33  0.17          1.00          0.11             0.25  0.33        0.20
Felipe Garcia     0.33   0.33  0.67          0.11          1.00             0.44  0.33        0.56
Gustavo Henrique  0.75   0.40  0.43          0.25          0.44             1.00  0.40        0.29
Jênie             0.50   0.50  0.50          0.33          0.33             0.40  1.00        0.33
João Victor       0.33   0.33  0.22          0.20          0.56             0.29  0.33        1.00
Joaquim           0.00   0.00  0.29          0.00          0.33             0.17  0.20        0.33
Maisa             0.67   0.67  0.33          0.50          0.22             0.50  0.67        0.17
Matheus           0.00   0.00  0.17          0.00          0.11             0.25  0.00        0.00
Rayssa            0.00   0.00  0.50          0.00          0.33             0.17  0.00        0.00
Rodrigo           0.00   0.33  0.00          0.00          0.11             0.00  0.00        0.20
Samara            0.20   0.50  0.29          0.00          0.33             0.40  0.20        0.14
Simone            0.60   0.60  0.38          0.20          0.56             0.50  0.60        0.67
Thiago Aoki       0.00   0.00  0.17          0.00          0.11             0.00  0.00        0.00
Thierry           0.33   0.33  0.17          0.00          0.11             0.25  0.33        0.00
Vinícius          0.33   0.33  0.17          0.00          0.11             0.25  0.33        0.00
Zé Vitor          0.38   0.38  0.56          0.12          0.89             0.50  0.38        0.62
                 Joaquim Maisa Matheus Rayssa Rodrigo Samara Simone Thiago Aoki Thierry Vinícius Zé Vitor
André               0.00  0.67    0.00   0.00    0.00   0.20   0.60        0.00    0.33     0.33     0.38
Daniel              0.00  0.67    0.00   0.00    0.33   0.50   0.60        0.00    0.33     0.33     0.38
Dorce               0.29  0.33    0.17   0.50    0.00   0.29   0.38        0.17    0.17     0.17     0.56
Estevão Alves       0.00  0.50    0.00   0.00    0.00   0.00   0.20        0.00    0.00     0.00     0.12
Felipe Garcia       0.33  0.22    0.11   0.33    0.11   0.33   0.56        0.11    0.11     0.11     0.89
Gustavo Henrique    0.17  0.50    0.25   0.17    0.00   0.40   0.50        0.00    0.25     0.25     0.50
Jênie               0.20  0.67    0.00   0.00    0.00   0.20   0.60        0.00    0.33     0.33     0.38
João Victor         0.33  0.17    0.00   0.00    0.20   0.14   0.67        0.00    0.00     0.00     0.62
Joaquim             1.00  0.00    0.33   0.20    0.00   0.20   0.14        0.00    0.00     0.00     0.38
Maisa               0.00  1.00    0.00   0.00    0.00   0.25   0.40        0.00    0.50     0.50     0.25
Matheus             0.33  0.00    1.00   0.33    0.00   0.33   0.00        0.00    0.00     0.00     0.12
Rayssa              0.20  0.00    0.33   1.00    0.00   0.20   0.00        0.33    0.00     0.00     0.22
Rodrigo             0.00  0.00    0.00   0.00    1.00   0.33   0.20        0.00    0.00     0.00     0.12
Samara              0.20  0.25    0.33   0.20    0.33   1.00   0.33        0.00    0.33     0.33     0.38
Simone              0.14  0.40    0.00   0.00    0.20   0.33   1.00        0.00    0.20     0.20     0.62
Thiago Aoki         0.00  0.00    0.00   0.33    0.00   0.00   0.00        1.00    0.00     0.00     0.12
Thierry             0.00  0.50    0.00   0.00    0.00   0.33   0.20        0.00    1.00     1.00     0.12
Vinícius            0.00  0.50    0.00   0.00    0.00   0.33   0.20        0.00    1.00     1.00     0.12
Zé Vitor            0.38  0.25    0.12   0.22    0.12   0.38   0.62        0.12    0.12     0.12     1.00

### Matriz de coocorrência
   to
to                   Crepúsculo DC Game of Thrones Harry Potter Marvel
  Crepúsculo                  0  3               2            2      2
  DC                          3  0               4            4      5
  Game of Thrones             2  4               0            6      5
  Harry Potter                2  4               6            0      9
  Marvel                      2  5               5            9      0
  Senhor dos Anéis            1  3               4            3      2
  Star Wars                   3  4               3            3      3
  The Hunger Games            1  3               4            6      5
  Velozes e Furiosos          1  3               4            5      5
                    to
to                   Senhor dos Anéis Star Wars The Hunger Games Velozes e Furiosos
  Crepúsculo                        1         3                1                  1
  DC                                3         4                3                  3
  Game of Thrones                   4         3                4                  4
  Harry Potter                      3         3                6                  5
  Marvel                            2         3                5                  5
  Senhor dos Anéis                  0         2                3                  3
  Star Wars                         2         0                2                  2
  The Hunger Games                  3         2                0                  4
  Velozes e Furiosos                3         2                4                  0

## Grafos

### Grafo de incidência
<img width="1920" height="992" alt="grafo_incidencia" src="https://github.com/user-attachments/assets/4cb4368c-b1e1-40cc-bf32-9ddd78c33212" />

### Grafo de similiaridade
<img width="1920" height="992" alt="grafo_similaridade" src="https://github.com/user-attachments/assets/b6a96b76-0ade-4098-bf4d-4aa709e17f80" />

### Grafo de coocorrência
<img width="613" height="356" alt="grafo_coocorrencia" src="https://github.com/user-attachments/assets/b54d290d-950b-4b78-a430-61a6046c5e11" />

---

### 🧑‍🎓 Participantes do Grupo

| Nome do Discente | RA        |
| ---------------- | --------- |
| Jênie Danielle  | 1993310 |
| Maisa Amaral    | 1997058 |
| Samara Adorno     | 2001639 |
| Simone Siqueira  | 2001915 |
---

###  🎓 Disciplina

**MATEMÁTICA DISCRETA - Profª BIANCA SAVEGNAGO DE MIRA**

