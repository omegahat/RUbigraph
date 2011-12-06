\name{runUbigraph}
\alias{runUbigraph}
\alias{isUbigraphRunning}
\title{Run Ubigraph}
\description{
  \code{runUbigraph} is a simple function to start the Ubigraph server.
  \code{isUbigraphRunning} allows us to check whether the Ubigraph
  server is already running.
}
\usage{
runUbigraph(cmd = UbigraphServerApp, error = TRUE)
isUbigraphRunning(server = "http://127.0.0.1:20738/RPC2",
                    curl = getCurlHandle())
}
\arguments{
  \item{cmd}{the location of the Ubigraph server executable.}
  \item{error}{a logical value which controls whether we raise an error
     or just return a logical value if we cannot run the Ubigraph server.
   }
   \item{server}{the URL for the Ubigraph server}
   \item{curl}{a curl handle that is used to perform the communication
     between R and the Ubigraph server}
}
\value{
  This is run for the side effect of starting the server.
}
\references{\url{http://ubietylab.net/ubigraph/}}
\author{Duncan Temple Lang}
\note{
  In the future, we will add facilities for determining
  the location of the executable during configuration.
}
\seealso{
  \code{\link{Ubigraph}}
  \code{\link{newVertex}}  
  \code{\link{newEdge}}
}
\examples{
}
\keyword{hplot}
