\name{testSegRatio}
\alias{testSegRatio}
\title{S3 class testSegRatio}
%- Also NEED an '\alias' for EACH other topic documented here.
\description{ An S3 class which contains  results of classic tests for
  assessing marker dosage in autopolyploids using chi-squared tests or
  binomial confidence intervals
}
\value{
  Returns object of class \code{testSegRatio} with components
  \item{probability}{matrix of probabilities under the test for each
    dosage where columns are doses  and rows are markers}
  \item{dosage}{ vector of allocated dosages where allocation unique
    otherwise \code{NA}}
  \item{allocated}{ matrix of 0's and 1's where 1 indicates dosage
    allocation where columns are doses  and rows are markers}
  \item{alpha}{alpha level for significance test or CI construction}
  \item{expected.ratios}{expected segregation ratios under null hypotheses}
  \item{call}{call to test.segRatio}
}
\references{
  \itemize{

    Mather, K. (1951) The measurement of linkage in heredity.
    \emph{Methuen} London
    
  Ripol, M I et al (1999) Statistical aspects of genetic mapping in
    autopolyploids. \emph{Gene} \bold{235} 31--41
}
}
\author{Peter Baker \email{drpetebaker@gmail.com}}
\seealso{ \code{\link{segRatio}}, \code{\link{expected.segRatio}},
  \code{\link{test.segRatio}}
}
\keyword{manip}
\concept{segregation ratio}% __ONLY ONE__ keyword per line
\concept{dominant marker}
\concept{autopolyploid}
\concept{polyploid}
