\name{polySegratio-package}
\alias{polySegratio-package}
\alias{polySegratio}
\docType{package}
\title{
Segregation Ratios for Autoployploids
}
\description{
  These functions provide tools for computing expected segregation ratios
  (or more correctly segregation proportions) for dominant markers in
  regular autopolyploids  and simulating such marker data as well as
  conducting standard Chi squared tests and Binomial confidance
  intervals for assigning marker dosage. 
}
\details{
\tabular{ll}{
Package: \tab polySegratio\cr
Type: \tab Package\cr
Version: \tab 0.2-6\cr
Date: \tab 2026-02-25\cr
License: \tab GPL-3\cr
}
Use \code{\link{expected.segRatio}} to compute expected segregation
proportions for regular autopolyploids

Use \code{\link{segregationRatios}} to compute segregation ratios for
a matrix of markers

Use \code{\link{test.segRatio}} to assignmarker dosage via Chi squared
tests or Binomial CIs

Use \code{\link{sim.autoMarkers}} and \code{\link{sim.autoCross}} to
simulate marker data under various scenarios

Use \code{\link{addMisclass}} and \code{\link{addMissing}} make some
markers misclassified or missing at random

}
\author{Peter Baker \email{drpetebaker@gmail.com}}
\references{
  \itemize{
    
    Haldane, J. B. S. (1930) Theoretical genetics of
    autopolyploids. \emph{Journal of genetics} \bold{22} 359--372

    Ripol, M I et al (1999) Statistical aspects of genetic mapping in
    autopolyploids. \emph{Gene} \bold{235} 31--41
}
}
\keyword{ package }
\keyword{manip}
\concept{segregation ratio}% __ONLY ONE__ keyword per line
\concept{dominant marker}
\concept{autopolyploid}
\concept{polyploid}
\examples{

## expected segregation proportions heterogeneous parents
expected.segRatio(4)
expected.segRatio("Tetraploid")
expected.segRatio("Octa")

## expected segregation proportions homogeneous parents
expected.segRatio("Octa",type="heter")

## generate dominant markers for autotetraploids
a1 <- sim.autoMarkers(4,c(0.8,0.2))
print(a1)
plot(a1)

## generate crosses for different parental types
p2 <- sim.autoCross(4, dose.proportion=list(p01=c(0.7,0.3),
                     p10=c(0.7,0.3),p11=c(0.6,0.2,0.2)))
print(p2)
plot(p2)

## simulate and test some markers, printing out a summary table of
## no.s of correct marker dosages 

a <- sim.autoMarkers(ploidy = 8, c(0.7,0.2,0.09,0.01),
                     type="hetero", n.markers=500,n.individuals=100)
a <- addMissing(a, 0.07)  # make seven percent missing at random
at <- test.segRatio(a$seg.ratios, ploidy=8, type.parents="het",
                      method="bin")
print(addmargins(table(a$true.doses$dosage, at$dosage, exclude=NULL)))

}
