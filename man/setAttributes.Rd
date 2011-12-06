\name{setAttributes}
\alias{setAttributes}
\title{Set attributes of a Ubigraph object}
\description{
  This function sets one or more attributes/properties of an object in a 
  Ubigraph display/graph.
}
\usage{
setAttributes(id, ..., .attrs = list(...),
              .type = if (is(id, "EdgeID")) "edge" else "vertex",
              .server = "http://127.0.0.1:20738/RPC2", curl = getCurlHandle())
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{id}{the identifier for the Ubigraph object. This is typically
    obtained by a call to \code{\link{newVertex}} or \code{\link{newEdge}}.}
  \item{\dots}{name = value pairs giving the attributes and their values.}
  \item{.attrs}{an alternative way to specify the name = value pairs of
    attributes. This is convenient for programmatic use when the
    attributes     are already in a list.  }
  \item{.type}{either "edge" or "vertex" identifying whether the object
      is an edge or a vertex. We call a different XML-RPC method accordingly.}
  \item{.server}{the server object}
  \item{curl}{ a CURLHandle object that we can reuse across XML-RPC calls.}
}

\value{
  A named logical vector indicating whether each attribute
  was successfully set.
}
\references{}
\author{Duncan Temple Lang}
\seealso{
  \code{\link{newVertex}}, \code{\link{newEdge}}  
}
\examples{

}

\keyword{aplot}
\keyword{iplot}
\keyword{hplot}
\keyword{dynamic}

