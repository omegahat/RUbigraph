library(RUbigraph)
if(isUbigraphRunning()) {
  clear()
  ids = sapply(1:10, newVertex, 'shape' = 'torus')

  newEdge(ids[1], ids[2], color = "red")

  edges = mapply(newEdge, ids, c(ids[-1], ids[1]))
}
