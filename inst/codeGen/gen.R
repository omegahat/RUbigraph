vertexAttributes = c("color", "shape", "shapedetail", "label", "size", "fontcolor", "fontfamily", "fontsize", "visible")
edgeAttributes = c("arrow", "arrow_position", "arrow_radius", "arrow_length", "arrow_reverse",
                    "color",
                    "label", "fontcolor", "fontfamily", "fontsize", "visible",
                     "width", "stroke", "showstrain", "oriented", "strength", "spline")

genFun =
function(id, class)
{
#  sprintf('setMethod("$<-", "%s", function(x, name, value) {\n   setAttributes(x, %s = value)\n   x\n})',  class, id),
    sprintf('setMethod("%s<-", "%s", function(x, ..., value) {\n   setAttributes(x, %s = value, ...)\n   x\n})',  id, class, id)
}

# For help/Rd
#cat(sprintf("\\alias{%s}\n", paste(unique(c(vertexAttributes, edgeAttributes)), "<-", sep = ""))
cat(sprintf("\\alias{%s<-,VertexID-method}\n", vertexAttributes, "<-", sep = ""))
cat(sprintf("\\alias{%s<-,EdgeID-method}\n", edgeAttributes, "<-", sep = ""))

con = file("R/gen.R", "w")



tt = dQuote(paste(unique(c(vertexAttributes, edgeAttributes)), "<-", sep = ""))
if(FALSE)
  cat(paste("export(", paste(tt, collapse = ",\n"), ")"), paste("exportMethods(", paste(tt, collapse = ",\n"), ")"),
       sep = "\n", file = con)

cat(sapply(unique(c(vertexAttributes, edgeAttributes)),
            function(x)
                sprintf("if(!isGeneric('%s<-'))\n   setGeneric('%s<-', function(x, ..., value) standardGeneric('%s<-'))", x, x, x)), sep = "\n", file = con)

cat("\n\n", file = con)

cat(sapply(vertexAttributes, genFun, "VertexID"), sep = "\n", file = con)
cat(sapply(edgeAttributes, genFun, "EdgeID"), sep = "\n", file = con)
close(con)



