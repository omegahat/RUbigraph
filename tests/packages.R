library(RUbigraph)
if(isUbigraphRunning()) {

   dep = available.packages(contrib.url('http://www.omegahat.org/R', type = "source"))
   pkgs = unique(rownames(dep))
   g = utils:::.make_dependency_list(pkgs, dep)
   all.pkgs = unique(c(unlist(g), pkgs))

   curl = getCurlHandle()

   clear( curl = curl)

   ids = sapply(all.pkgs, function(i) newVertex(.attrs = list(label = i), curl = curl))
   names(ids) = all.pkgs

   sapply(ids[pkgs], function(id) setAttributes(id, color = '#FF0000', curl = curl))

   sapply(pkgs,
          function(i) {
            d = g[[i]]

            if(length(d)) {
              print(i)            
              sapply(ids[d], function(o) newEdge(ids[i], o, curl = curl))
            }
          })
 }
