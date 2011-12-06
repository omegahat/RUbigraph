\name{newEdge}
\alias{newVertex}
\alias{newEdge}
\alias{removeVertex}
\alias{removeEdge}
\title{Create a new vertex or edge in a Ubigraph}
\description{
 These functions communicate with the Ubigraph server and create a node
 or an edge in the graph, or alternatively remove previously created
 edges or nodes.
}
\usage{
newEdge(src, dest, ..., id = NA, server = "http://127.0.0.1:20738/RPC2", .attrs = list(...), curl = getCurlHandle())
newVertex(id = NA, ..., server = "http://127.0.0.1:20738/RPC2", .attrs = list(...), curl = getCurlHandle())
removeEdge(id, server = "http://127.0.0.1:20738/RPC2", curl = getCurlHandle())
removeVertex(id, server = "http://127.0.0.1:20738/RPC2", curl = getCurlHandle())
}
\arguments{
  \item{id}{a user-supplied identifier to use for the Ubigraph object}  
  \item{src}{an identifier of an existing Ubigraph object}
  \item{dest}{an identifier of an existing Ubigraph object}
  \item{\dots}{additional \code{name = value} that specify attributes of
  the vertex or edge. These are passed on to \code{\link{setAttributes}}.}
  \item{server}{the identity of the XML-RPC server object, i.e. machine and port}
  \item{.attrs}{an alternative way to specify attributes to be passed on
  to \code{\link{setAttributes}}.}
  \item{curl}{a curl handle which can be specified by the caller or
    indirectly via a \code{\link{Ubigraph-class}} server object.  This
    is important for efficiency as we want to reuse existing, open connections.}
}
\value{
  An object of class \code{\link{VertexID-class}} or
  \code{\link{EdgeID-class}} depending on the type of object in the
  Ubigraph that is created.
}
\references{\url{http://ubietylab.net/ubigraph/index.html}}
\author{Duncan Temple Lang}

\seealso{
 \code{\link{Ubigraph}}
}
\examples{
 if(isUbigraphRunning()) { # just for testing the example
    a = newVertex()
    b = newVertex()
    c = newVertex(label = "C", color = "red", size = 2)
 
    e = newEdge(a, b)
 }
 

}

\keyword{aplot}
\keyword{iplot}
\keyword{dplot}
\keyword{dynamic}


