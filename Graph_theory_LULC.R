## Importation des packages 

library(igraph)
library(terra)
library(tidyr)
library(dplyr)


##Importation des rasters LULC 

lulc_2015 <- rast("~/Mémoire Master 2025-2026/LULC_2015.tif")

lulc_2019 <- rast("~/Mémoire Master 2025-2026/LULC_2019.tif")


##Matrice de transition 

tran_mat <- crosstab(c(lulc_2015,lulc_2019))

tran_mat <- as.matrix(tran_mat) ## transformation en matrice 

tran_mat <- tran_mat/rowSums(tran_mat) ##normalisation 


## Graphe probabiliste 

gr <- graph_from_adjacency_matrix(tran_mat, weighted = TRUE) ##graphe probabiliste 1 

plot(gr) ##visualisation 

strength(gr, mode = "in") ## Entrée 

strengt(gr, mode = "out") ## Sorties 

eigen_centrality(gr)$vector ##Centralité 

page_rank(gr)$vector  ##Page rank 


## Elimination des diagonaux 

diag(tran_mat) <- 0 ## Diagonaux en 0 

gr2 <- graph_from_adjacency_matrix(tran_mat, weighted = TRUE) ## Graphe 

plot(gr2) ## Visualisation 

strength(gr2, mode = 'in') ##Entrées 

strength(gr2, mode = "out")  ## Sorties 

eigen_centrality(gr2)$vector  ## Centralité 

page_rank(gr2)$vector  ## Page rank 
