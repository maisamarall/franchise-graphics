# MÉTRICAS TOPOLÓGICAS - Incidência

# Identifica os vértices
V(grafo_inc)

# Número de vértices
length(V(grafo_inc))

# Identifica as arestas
E(grafo_inc)

# Número de arestas
ecount(grafo_inc)

# Grau de cada vértice
degree(grafo_inc)

# Grau médio
mean(degree(grafo_inc))

# Pesos das arestas
E(grafo_inc)$weight

# Força média de conectividade
mean(E(grafo_inc)$weight)

# Densidade da rede
edge_density(grafo_inc, loops = FALSE)


# MÉTRICAS TOPOLÓGICAS - Similaridade

# Identifica os vértices
V(grafo_sim)

# Número de vértices
length(V(grafo_sim))

# Identifica as arestas
E(grafo_sim)

# Número de arestas
ecount(grafo_sim)

# Grau de cada vértice
degree(grafo_sim)

# Grau médio
mean(degree(grafo_sim))

# Pesos das arestas
E(grafo_sim)$weight

# Força média de conectividade
mean(E(grafo_sim)$weight)

# Densidade da rede
edge_density(grafo_sim, loops = FALSE)


# MÉTRICAS TOPOLÓGICAS - Coocorrência

# Identifica os vértices
V(grafo_co)

# Número de vértices
length(V(grafo_co))

# Identifica as arestas
E(grafo_co)

# Número de arestas
ecount(grafo_co)

# Grau de cada vértice
degree(grafo_co)

# Grau médio
mean(degree(grafo_co))

# Pesos das arestas
E(grafo_co)$weight

# Força média de conectividade
mean(E(grafo_co)$weight)

# Densidade da rede
edge_density(grafo_co, loops = FALSE)
