\name{segRatio}
\alias{segRatio}
\docType{class}
%
\title{S3 class segRatio}
\description{
  An S3 class which contains the segregation
  ratios for dominant markers and other information such as the number
  of dominant markers per individual
}

\value{
  \item{r}{no. of 1's for each individual}
  \item{n}{total no. of markers present for each individual}
  \item{seg.ratio}{segregation proportion for each individual}
  \item{n.individuals}{total number of individuals}
}

\author{Peter Baker \email{drpetebaker@gmail.com}}
\seealso{\code{\link{segregationRatios}}: computing segregation
  ratios,  \code{\link{testSegRatio}}: chi squared \eqn{\chi^2} and
  tests and Binomial
  confidence intervals for assigning marker dosage,
  \code{\link{expected.segRatio}}: compute expected segregation
  proportions for various dosages
  for dominant markers in regular autopolyploids
}
\keyword{classes}