library(RUbigraph)
if(isUbigraphRunning()) {

  clear()
  a = newVertex()
  b = newVertex( color = 'red')

  removeVertex(a)

  e = newEdge(a, b, color = 'yellow', width = 10)
  removeEdge(e)
}


