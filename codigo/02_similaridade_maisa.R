    rm(list = ls())

    dados_franquias <- read.csv(file.choose(), header = TRUE, sep = ",")

    # Criar matriz de incidência
    matriz_inc <- xtabs(weight ~ from + to, data = dados_franquias)
    matriz_inc <- unclass(matriz_inc)  # transforma em matriz

    # Número de alunos
    n <- nrow(matriz_inc)
    alunos <- rownames(matriz_inc)

    # Criar matriz de similaridade vazia
    matriz_sim <- matrix(0, nrow=n, ncol=n)
    rownames(matriz_sim) <- alunos
    colnames(matriz_sim) <- alunos

    # Calcular similaridade de Jaccard
    for(i in 1:n){
    for(j in 1:n){
        intersecao <- sum(matriz_inc[i,] & matriz_inc[j,])  
        uniao <- sum(matriz_inc[i,] | matriz_inc[j,])       
        matriz_sim[i,j] <- intersecao / uniao
    }
    }

    # Visualizar matriz de similaridade
    print(round(matriz_sim, 2))

    # Criar grafo de similaridade, com pesos
    library(igraph)
    grafo_sim <- graph_from_adjacency_matrix(matriz_sim, mode="undirected", weighted=TRUE, diag=FALSE)

    V(grafo_sim)$color <- "skyblue" #cor circulos
    E(grafo_sim)$color <- "gray50" #cor arestas

    plot(grafo_sim, edge.width=E(grafo_sim)$weight*5, vertex.size=12, vertex.label.cex=0.8)
