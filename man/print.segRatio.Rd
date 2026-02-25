\name{print.segRatio}
\alias{print.segRatio}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Print segregation ratios }
\description{
  Prints an object of S3 class \code{segRatio}
}
\usage{
\method{print}{segRatio}(x, digits=3, \dots, index = c(1:min(10,length(x$r))) )
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{object of class \code{segRatio} }
  \item{digits}{minimal number of \code{significant} digits, see
    \code{\link{print.default}}}
  \item{index}{which rows of the marker matrix and segregation
    proportions to print. (Default: c(1:10))  }
  \item{\ldots}{extra parameters passed on to \code{print} function}
}
\value{
  None.
}
\author{Peter Baker \email{drpetebaker@gmail.com}}
\note{ Objects of class \code{\link{segRatio}} may be produced from
  a \code{matrix} of markers by
  employing the function \code{\link{segregationRatios}}
  }

  \seealso{ \code{\link{segRatio}}, \code{\link{segregationRatios}},
  \code{\link{print}},\code{\link{print.default}} }
\examples{

 ## generate autopolyploid markers
 a1 <- sim.autoMarkers(4,c(0.8,0.2),n.markers=20,n.individuals=10)

 print(class(a1$seg.ratios))
 print(a1$seg.ratios)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.segRatio.Rd
\keyword{manip}
\concept{segregation ratio}% __ONLY ONE__ keyword per line
\concept{dominant marker}
\concept{autopolyploid}
