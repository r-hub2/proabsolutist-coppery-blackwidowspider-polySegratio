\name{divideAutoMarkers}
\alias{divideAutoMarkers}
\title{S3 class divideAutoMarkers}
\description{An S3 class which contains marker data and segregation proportions split into three groups corresponding to parents with \sQuote{01}, \sQuote{10} and \sQuote{11} markers}
\value{
  \item{p10, p01, p11}{lists for where the first, second components are heterozygous for parents 1, 2 and both resp. Each list contains
    \itemize{
      \item \code{description} text containing a description for printing
      \item \code{parent} label for parent
      \item \code{markers} markers for specified parental type including parents etc
      \item \code{extras} extra columns subsetted (if specified)
      \item \code{seg.ratios} segregation ratios as class \code{segRatio}
    }
  }
}
\author{Peter Baker \email{drpetebaker@gmail.com}}
\seealso{\code{\link{segRatio}}, \code{\link{sim.autoCross}}}
\examples{
p2 <- sim.autoCross(4, dose.proportion=list(p01=c(0.7,0.3),p10=c(0.7,0.3),
                                            p11=c(0.6,0.2,0.2)))
print(p2)
ss <- divide.autoMarkers(p2$markers)
print(ss)
}
\keyword{manip}
\concept{segregation ratio}
\concept{dominant marker}
\concept{autopolyploid}
\concept{polyploid}
