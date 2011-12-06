library(RUbigraph)
if(isUbigraphRunning()) {
  clear()
  id = newVertex()
  setAttributes(id, color = col2rgb('red'), shape = 'torus', label = 'A torus', size = 2)

  setAttributes(id, visible = FALSE)
  setAttributes(id, visible = TRUE)
}

