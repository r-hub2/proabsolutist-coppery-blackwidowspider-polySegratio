\name{print.simAutoMarkers}
\alias{print.simAutoMarkers}
\alias{print.simAutoCross}
\alias{print.divideAutoMarkers}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Print objects of class  simAutoMarkers }
\description{
  Prints an object of S3 class \code{simAutoMarkers}
}
\usage{
\method{print}{simAutoMarkers}(x, \dots, row.index = c(1:min(10,
nrow(x$markers))), col.index = c(1:min(10, ncol(x$markers))) )

\method{print}{simAutoCross}(x, \dots, row.index = c(1:min(10,
nrow(x$markers))), col.index = c(1:min(10, ncol(x$markers))))

\method{print}{divideAutoMarkers}(x, \dots, row.index = c(1:10),
  col.index = c(1:10), tabulate.extras = FALSE )

}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ object of class \code{simAutoMarkers} }
  \item{row.index}{ which rows to print (Default: first 10)}
  \item{col.index}{ which columns to print (Default: first 10)}
  \item{tabulate.extras}{If TRUE then cross--tabulate any axtra columns
    (Default: FALSE)}
  \item{\ldots}{extra options for printing}
}
\value{
  None.
}
\author{Peter Baker \email{drpetebaker@gmail.com}}
\note{ Objects of class \code{\link{simAutoMarkers}} may be produced from
  by employing the function \code{\link{sim.autoMarkers}} and the same
  for \code{\link{sim.autoCross}} and \code{\link{divide.autoMarkers} }
}
\seealso{ \code{\link{segRatio}}, \code{\link{segregationRatios}},
  \code{\link{sim.autoCross}}, \code{\link{sim.autoMarkers}},
  \code{\link{divide.autoMarkers}}, \code{\link{print}}
}

\examples{

## generate data sets
a1 <- sim.autoMarkers(4,c(0.8,0.2))
a2 <- sim.autoMarkers(8,c(0.7,0.2,0.09,0.01),type="homo",n.markers=20,n.individuals=10)

print(a1)
print(a2)

## datasets from crosses
p1 <- sim.autoCross(4, dose.proportion=c(0.7,0.3), n.markers=20, n.indiv=10)
print(p1)
p2 <- sim.autoCross(4, dose.proportion=list(p01=c(0.7,0.3),p10=c(0.7,0.3),p11=c(0.6,0.2,0.2)))
print(p2)

## divide up data from crosses
ss <- divide.autoMarkers(p2$markers)
print(ss)



}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.

\keyword{manip}
\concept{segregation ratio}% __ONLY ONE__ keyword per line
\concept{dominant marker}
\concept{autopolyploid}
\concept{polyploid}
