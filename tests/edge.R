library(RUbigraph)
if(isUbigraphRunning()) {
  clear()
  x = newVertex()
  y = newVertex()

  e = newEdge(x, y)

  setAttributes(e, color = '#FF0000', width = '2')
}
