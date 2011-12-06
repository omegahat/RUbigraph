# Add styles


setClass("UbigraphID", contains = c("integer")) # , "VIRTUAL"
setClass("VertexID", contains = "UbigraphID")
setClass("EdgeID", contains = "UbigraphID")

setClass("Ubigraph", representation(server = "character", curl = "CURLHandle"))

Ubigraph =
  #
  # Create a connection to the server.
  #
function(clear = TRUE, server = "http://127.0.0.1:20738/RPC2", curl = getCurlHandle(), obj = new("Ubigraph"))
{
   obj@server = server
   obj@curl = curl
   if(clear)
      obj$clear()
   
   obj
}

setMethod("$", "Ubigraph",
           function(x, name) {
              function(...)
                get(name)(..., server = x@server, curl = x@curl)
           })

setMethod("$<-", "UbigraphID",
          function(x, name, value) {
            server = "http://127.0.0.1:20738/RPC2"
            curl = getCurlHandle()
            vals = structure(list(value), names = name)
            setAttributes(x, .attrs = vals, server = server, curl = curl)
            x
          })


setMethod("[[<-", "UbigraphID",
          function(x, i, j, ..., server = "http://127.0.0.1:20738/RPC2", curl = getCurlHandle(), value) {
            setAttributes(x, .attrs = structure(list(value), names = i), server = server, curl = curl)
            x
          })

setMethod("[<-", "UbigraphID",
          function(x, i, j, ..., server = "http://127.0.0.1:20738/RPC2", curl = getCurlHandle(), value) {
            vals = lapply(value, function(x) x)
            names(vals) = i
            setAttributes(x, .attrs = vals, server = server, curl = curl)
            x
          })



clear =
function(server = "http://127.0.0.1:20738/RPC2", curl = getCurlHandle())
{
  xml.rpc(server, "ubigraph.clear", .curl = curl) == 0
}

newVertex =
function(id = NA, ..., server = "http://127.0.0.1:20738/RPC2", .attrs = list(...), curl = getCurlHandle())
{
  if(length(id) > 1)
     return(sapply(id, newVertex, .attrs = .attrs, server = server, curl = curl))
  
  if(is.na(id))
      ans = xml.rpc(server, "ubigraph.new_vertex", .curl = curl)
  else {
     if(xml.rpc(server, "ubigraph.new_vertex_w_id", as.integer(id), .curl = curl) == 0)
        ans = as.integer(id)
     else
       stop(sprintf("id (%d) is already in use", as.integer(id)))
   }

  ans = new("VertexID", ans)

  setAttributes(ans, .attrs = .attrs, .server = server, curl = curl)
  
  ans
}

setAttributes =
function(id, ..., .attrs = list(...), .type = if(is(id, "EdgeID")) "edge" else "vertex", .server = "http://127.0.0.1:20738/RPC2",
            curl = getCurlHandle())
{
   op = sprintf("ubigraph.set_%s_attribute", .type)
   sapply(names(.attrs),
           function(at) {
              val = .attrs[[at]]
              if((at == "color" || at == "fontcolor") && substring(val, 1, 1) != "#") {
                 tmp = col2rgb(val)/255
                 val = rgb(tmp[1], tmp[2], tmp[3])
              }

              if(is.logical(val))
                 val = tolower(as.character(val))
                
              xml.rpc(.server, op, as.integer(id), at, as.character(val), .curl = curl) == 0
           })
}

newEdge =
function(src, dest, ..., id = NA, server = "http://127.0.0.1:20738/RPC2", .attrs = list(...), curl = getCurlHandle())
{
  if(length(src) > 1 || length(dest) > 1) {
    return(mapply(newEdge, src, dest, id, MoreArgs = list(server = server, .attrs = .attrs, curl = curl)))
  }

  
  if(is.na(id))
     ans = xml.rpc(server, "ubigraph.new_edge", as.integer(src), as.integer(dest), .curl = curl)
  else {
     ans = xml.rpc(server, "ubigraph.new_edge_w_id", as.integer(id), as.integer(src), as.integer(dest), .curl = curl)
     if(ans != 0)
       stop("id (%d) already in use")
  }

   setAttributes(ans, .attrs = .attrs, .type = "edge", curl = curl)
   new("EdgeID", ans)
}

removeEdge =
function(id, server = "http://127.0.0.1:20738/RPC2", curl = getCurlHandle())
{
     xml.rpc(server, "ubigraph.remove_edge", as.integer(id), .curl = curl)
}

removeVertex =
function(id, server = "http://127.0.0.1:20738/RPC2", curl = getCurlHandle())
{
     xml.rpc(server, "ubigraph.remove_vertex", as.integer(id), .curl = curl)
}

