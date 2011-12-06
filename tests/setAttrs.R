library(RUbigraph)
if(isUbigraphRunning()) {
  
clear()
id = newVertex()
setAttributes(id, color = 'red', shape = 'torus', label = 'A torus', size = 2)

id$color = "blue"
id$fontsize = 18

id[c("fontsize", "color")] = c(12, "red")

color(id) = "orange"
fontsize(id) = 22

}
