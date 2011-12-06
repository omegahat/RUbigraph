library(RUbigraph)

if(isUbigraphRunning()) {

dep = available.packages(contrib.url('http://www.omegahat.org/R', type = "source"))
pkgs = unique(rownames(dep))
g.deps = utils:::.make_dependency_list(pkgs, dep)
all.pkgs = unique(c(unlist(g.deps), pkgs))

g = Ubigraph()
g$clear()

 ## Use color to identify if it is omegahat or base.
ids = sapply(all.pkgs, function(i) g$newVertex(.attrs = list(label = i)))

sapply(pkgs,
       function(i) {
          sapply(ids[g.deps[[i]]], function(o) g$newEdge(ids[i], o))
       })
}
