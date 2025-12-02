rm(list = ls())

# Leitura do dataset
dados_franquias <- read.csv(file.choose(), header = TRUE, sep = ",")
dados_franquias

# Criar matriz de incidencia
matriz_inc <- xtabs(weight ~ from + to, data = dados_franquias)
matriz_inc <- unclass(matriz_inc)  # transforma em matriz
class(matriz_inc)

# Visualiza a matriz de incidencia
print(matriz_inc)

# Número de alunos
n <- nrow(matriz_inc)
alunos <- rownames(matriz_inc)

#Cria a matriz de coocorrencia
matriz_co <- t(matriz_inc) %*% matriz_inc
diag(matriz_co) <- 0 #diagonal igual a zero

#Visualiza a matriz de coocorrencia
print(matriz_co)

#Instalaçao do pacote para criar o grafo de coocorrencia
install.packages('igraph')
library('igraph')

#Criação do grafo de coocorrencia com pesos
grafo_co <- graph_from_adjacency_matrix(matriz_co, mode="undirected", weighted=TRUE, diag=FALSE)

V(grafo_co)$color <- "skyblue" #cor vertices
E(grafo_co)$color <- "gray50" #cor arestas

#Desenha o grafo de coocorrencia
plot(
  grafo_co,
  edge.width = E(grafo_co)$weight,
  edge.arrow.size = 0.1,
  vertex.size = 8,
  vertex.label.cex = 0.7
)