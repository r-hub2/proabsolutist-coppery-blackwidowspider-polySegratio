\name{expected.segRatio}
\alias{expected.segRatio}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Compute theoretical segregation proportions for regular autopolyploids}
\description{
  Expected segregation proportions for various dosages of dominant
  markers for regular autopolyploids are calculated
  using the formula of Ripol et al (1999) based on Haldane (1930) for
  single dose and multiple dose parents cross nulliplex
  ("homozygous") and an unpublished formula where both parents
  possess at least single dose markers ("heterogeneous") 
}
\usage{
expected.segRatio(ploidy.level = stop("No ploidy level set"),
type.parents = c("heterogeneous", "homozygous"))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ploidy.level}{the number of homologous chromosomes, either as
    numeric or as a character string}
  \item{type.parents}{ "heterogeneous" if parental markers are 0,1 or
    "homogeneous" if parental markers are both 1}
}
%%\details{
%%}
\value{
  \item{ratio}{vector of proportions for each dosage}
  \item{ploidy.level}{numeric value of ploidy level 2,4,6,8, \dots}
  \item{ploidy.name}{name of ploidy}
}
\references{

  Haldane, J. B. S. (1930) Theoretical genetics of
    autopolyploids. \emph{Journal of genetics} \bold{22} 359--372

  Ripol, M I et al (1999) Statistical aspects of genetic mapping in
    autopolyploids. \emph{Gene} \bold{235} 31--41

}
\author{Peter Baker \email{drpetebaker@gmail.com}}
\section{Warning }{
  While results will be returned if the ploidy level is set as an odd
  number, the formula used are only for even numbers. 
}
\seealso{ \code{\link{segRatio}}, \code{\link{test.segRatio}}}
\examples{
## heterogeneous parents

expected.segRatio(2)
expected.segRatio("Tetraploid")
expected.segRatio("tEtR")
expected.segRatio("octo")
expected.segRatio("Octa")
expected.segRatio(14)
## warning
expected.segRatio(9)

## errors - not run
## expected.segRatio("abcd")
## expected.segRatio(-1)

## homogeneous parents

expected.segRatio("Octa", type.parents="heter")
expected.segRatio("Octa", type.parents="homo")
expected.segRatio("tetra", type.parents="homo")
expected.segRatio(6, type.parents="homo")
expected.segRatio(9, type.parents="homo")

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{manip}
%\keyword{segregation}% __ONLY ONE__ keyword per line
\concept{segregation ratio}% __ONLY ONE__ keyword per line
\concept{dominant marker}
\concept{autopolyploid}
\concept{polyploid}
