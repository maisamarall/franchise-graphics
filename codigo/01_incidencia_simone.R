#leitura do dataset
dados_franquias <- read.csv(file.choose(), header = TRUE, sep = ",")
dados_franquias

# Construção da matriz de incidência
matriz_inc <- xtabs(weight ~ from + to, data = dados_franquias)
matriz_inc

class(matriz_inc)

#mudança do tipo matriz_inc
matriz_inc <- unclass(matriz_inc)
class(matriz_inc)
print(matriz_inc)

#instalar os pacotes
install.packages("igraph")
library(igraph)

# Grafo bipartido
grafo_inc <- graph_from_biadjacency_matrix(matriz_inc, directed = TRUE, mode = "out", weighted = TRUE)

# Visualização do grafo
plot(
  grafo_inc,
  edge.width = E(grafo_inc)$weight,
  edge.arrow.size = 0.1,
  vertex.size = 8,
  vertex.label.cex = 0.7
)
