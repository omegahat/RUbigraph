\name{Ubigraph-class}
\docType{class}
\alias{Ubigraph-class}
\alias{$,Ubigraph-method}
\alias{Ubigraph}

\title{A class to represent a Ubigraph server object }
\description{
  This class allows one to represent a connection to a Ubigraph server.
  It identifies the machine and port number for the connection.
  We also store a CURL connection that we can reuse across XML-RPC
  method calls and this leads to great efficiencies as we do not have to
  reopen a  connection each time.

  The primary motivations for this are the efficiency of caching the
  CURL connection, and to allow users to invoke the XML-RPC methods in
  the form \code{server$method}, e.g. \code{server$newEdge} and to have
  the server connection be implicitly made available to the
  correesponding R functions.
  
}
\section{Objects from the Class}{
  Objects of class \code{Ubigraph} should be created
  via the \code{\link{Ubigraph}} function.
}
\section{Slots}{
	 \describe{
    \item{\code{server}:}{Object of class \code{"character"} this
      contains the URL of the server, including the TCP/IP port.}
    \item{\code{curl}:}{Object of class \code{"CURLHandle"} a connection
    object which is used to implement the XML-RPC method calls}
  }
}
\section{Methods}{
  \describe{
    \item{$}{\code{signature(x = "Ubigraph")}: ... }
	 }
}
\references{}
\author{Duncan Temple Lang}


\seealso{
  \code{\link{newEdge}},  \code{\link{newVertex}},
   \code{\link{setAttributes}}
}
\examples{
if(runUbigraph(error = FALSE)) {
  g = Ubigraph()

  a = g$newVertex()
  b = g$newVertex( shape = 'torus', color = 'yellow')

  e = g$newEdge(a, b)
  g$setAttributes(e, color = 'red', fontsize = 18)

  g$removeEdge(e)
}
}
\keyword{classes}
