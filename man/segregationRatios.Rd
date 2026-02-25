\name{segregationRatios}
\alias{segregationRatios}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Compute observed segregation proportions for dominant markers in
  autopolyploids }
\description{
  Computes segregation ratios for a matrix of markers
  where the rows are markers and the columns are individuals and the
  markers are recorded as 0's and 1's
}
\usage{
segregationRatios(x, drop.cols = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ \code{matrix} of 0's, 1,s and NA's representing scores of
    dominant markers where the rows are markers and the columns are
    individuals
    }
    \item{drop.cols}{ \code{numeric} columns to drop when calculating
      segregation ratios }
}
\value{
  Returns an object of class \code{segRatio} containing
  \item{r}{no. of 1's for each individual}
  \item{n}{total no. of markers present for each individual}
  \item{seg.ratio}{segregation proportion for each individual}
  \item{n.individuals}{total number of individuals}
}
\author{Peter Baker \email{drpetebaker@gmail.com}}
\seealso{\code{\link{testSegRatio}}: chi squared \eqn{\chi^2} and
  tests and Binomial
  confidence intervals for assigning marker dosage, 
  \code{\link{expected.segRatio}}: compute expected segregation
  proportions for various dosages
  for dominant markers in regular autopolyploids
}
\examples{

## simulate small autotetraplid data set
a1 <- sim.autoMarkers(4,c(0.8,0.2),n.markers=20,n.individuals=10)
print(a1)

print(segregationRatios(a1$markers))

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{manip}
\concept{segregation ratio}% __ONLY ONE__ keyword per line
