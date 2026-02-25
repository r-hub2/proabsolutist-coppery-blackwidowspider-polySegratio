\name{print.testSegRatio}
\alias{print.testSegRatio}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Print objects of class testSegRatio}
\description{
  Prints an object of S3 class \code{testSegRatio}
}
\usage{
\method{print}{testSegRatio}(x, \dots, last = 10)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ object of class \code{testSegRatio}}
  \item{last}{ prints from 1 to \code{last} segregation ratio tests
    (Default: 10) }
  \item{\ldots}{ extra printing options}
}
\value{
  None
}
\author{Peter Baker \email{drpetebaker@gmail.com}}
\seealso{ \code{\link{segRatio}}, \code{\link{segregationRatios}},
  \code{\link{test.segRatio}}
}
\examples{

  ## simulated data
  a <- sim.autoMarkers(ploidy = 8, c(0.7,0.2,0.09,0.01))
  ac <- test.segRatio(a$seg.ratios, ploidy=8, method="chi.squared")
  print(ac)
}
\keyword{manip}
\concept{segregation ratio}% __ONLY ONE__ keyword per line
\concept{dominant marker}
\concept{autopolyploid}
\concept{polyploid}
