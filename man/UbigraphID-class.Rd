\name{UbigraphID-class}
\docType{class}
\alias{UbigraphID-class}
\alias{VertexID-class}
\alias{EdgeID-class}
\alias{$<-,UbigraphID-method}
\alias{[<-,UbigraphID-method}
\alias{[[<-,UbigraphID-method}
\alias{color<-}
 \alias{shape<-}
 \alias{shapedetail<-}
 \alias{label<-}
 \alias{size<-}
 \alias{fontcolor<-}
 \alias{fontfamily<-}
 \alias{fontsize<-}
 \alias{visible<-}
 \alias{arrow<-}
 \alias{arrow_position<-}
 \alias{arrow_radius<-}
 \alias{arrow_length<-}
 \alias{arrow_reverse<-}
 \alias{width<-}
 \alias{stroke<-}
 \alias{showstrain<-}
 \alias{oriented<-}
 \alias{strength<-}
 \alias{spline<-}

 \alias{color<-,VertexID-method}
 \alias{shape<-,VertexID-method}
 \alias{shapedetail<-,VertexID-method}
 \alias{label<-,VertexID-method}
 \alias{size<-,VertexID-method}
 \alias{fontcolor<-,VertexID-method}
 \alias{fontfamily<-,VertexID-method}
 \alias{fontsize<-,VertexID-method}
\alias{visible<-,VertexID-method}
\alias{arrow<-,EdgeID-method}
 \alias{arrow_position<-,EdgeID-method}
 \alias{arrow_radius<-,EdgeID-method}
 \alias{arrow_length<-,EdgeID-method}
 \alias{arrow_reverse<-,EdgeID-method}
 \alias{color<-,EdgeID-method}
 \alias{label<-,EdgeID-method}
 \alias{fontcolor<-,EdgeID-method}
 \alias{fontfamily<-,EdgeID-method}
 \alias{fontsize<-,EdgeID-method}
 \alias{visible<-,EdgeID-method}
 \alias{width<-,EdgeID-method}
 \alias{stroke<-,EdgeID-method}
 \alias{showstrain<-,EdgeID-method}
 \alias{oriented<-,EdgeID-method}
 \alias{strength<-,EdgeID-method}
 \alias{spline<-,EdgeID-method}


\title{Identifiers for Ubigraph vertices and edges}
\description{
  Objects in a Ubigraph display are identified by a unique
  identifier which is an integer. These classes
  represent such an identifier and also identify
  the type of object it identifies, i.e. a vertex or edge.
}
\section{Objects from the Class}{
  Objects of these classes are typically obtained via calls to
  \code{\link{newVertex}} and  \code{\link{newEdge}}.
}
\section{Slots}{
	 \describe{
    \item{\code{.Data}:}{these are (currently) simple scalar integers}
  }
}
\section{Extends}{
Class \code{"\linkS4class{integer}"}, from data part.
Class \code{"\linkS4class{vector}"}, by class "integer", distance 2.
Class \code{"\linkS4class{numeric}"}, by class "integer", distance 2.
Class \code{"\linkS4class{data.frameRowLabels}"}, by class "integer", distance 2.
}
\section{Methods}{
  \describe{
    \item{$<-}{\code{signature(x = "UbigraphID")}: ... }
    \item{[<-}{\code{signature(x = "UbigraphID")}: ... }
    \item{[[<-}{\code{signature(x = "UbigraphID")}: ... }
	 }
}
\references{ ~put references to the literature/web site here ~ }
\author{Duncan Temple Lang}

\seealso{
 \code{\link{Ubigraph}}
}
\examples{
if(isUbigraphRunning()) { # just for testing the example
   id = newVertex()
   setAttributes(id, color = 'red', shape = 'torus', label = 'A torus', size = 2)

   id$color = "blue"
   id$fontsize = 18

   id[c("fontsize", "color")] = c(12, "red")

   color(id) = "orange"
   fontsize(id) = 22
}
}
\keyword{classes}
