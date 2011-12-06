\name{clear}
\alias{clear}
\title{Clear a Ubigraph display}
\description{
 This clears all the objects from  the current Ubigraph display.
}
\usage{
clear(server = "http://127.0.0.1:20738/RPC2", curl = getCurlHandle())
}
\arguments{
  \item{server}{the location of the server. If \code{curl} is specified,
  typically the URL will already be set in that object and the existing
  connection can be reused without the overhead of reopening it.}
  \item{curl}{a CURLHandle that can be re-used across XML-RPC}
}
\value{
 A logical value
}
\references{}
\author{Duncan Temple Lang}
\seealso{}
\examples{
 if(isUbigraphRunning())  # just for testing the example
   clear()
}
\keyword{hplot}

