\name{test.segRatio}
\alias{test.segRatio}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Classic tests for assessing marker dosage in autopolyploids}
\description{
  Perform chi--squared tests or binomial CIs to obtain expected marker dosage
  in autopolyploids
}
\usage{
test.segRatio(seg.ratio, ploidy.level = 4,
  type.parents = c("heterogeneous", "homozygous"),
  method = c("chi.squared", "binomial"), alpha = 0.05, expected.ratio)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{seg.ratio}{ object of class \code{segRatio} containing
    segregation proportions}
  \item{ploidy.level}{the number of homologous chromosomes, either as
    numeric or as a character string}
  \item{type.parents}{\sQuote{heterogeneous} if parental markers are 0,1 or
    \sQuote{homozygous} if parental markers are both 1}
  \item{method}{ specify which method \sQuote{chi.squared} or
    \sQuote{binomial}}
  \item{alpha}{significance level for tests/CIs}
  \item{expected.ratio}{ vector of expected segregation proportions
    Default: determined by using function \code{expected.segRatio} given
    the \code{ploidy.level}
  }
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

  Mather, K. (1951) The measurement of linkage in heredity.
  \emph{Methuen} London
  
  Ripol, M I et al (1999) Statistical aspects of genetic mapping in
    autopolyploids. \emph{Gene} \bold{235} 31--41

}
\author{Peter Baker \email{drpetebaker@gmail.com}}
\seealso{ \code{\link{segregationRatios}} for computing segregation
  ratios and \code{\link{segRatio}}, \code{\link{expected.segRatio}}}
\examples{

  ## simulated data
  a <- sim.autoMarkers(ploidy = 8, c(0.7,0.2,0.09,0.01))
  print(a)

  ## summarise chi-squared test vs true
  ac <- test.segRatio(a$seg.ratios, ploidy=8, method="chi.squared")
  print(addmargins(table(a$true.doses$dosage, ac$dosage, exclude=NULL)))

  ## summarise binomial CI vs true
  ab <- test.segRatio(a$seg.ratios, ploidy=8, method="bin")
  print(addmargins(table(a$true.doses$dosage, ab$dosage, exclude=NULL)))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{manip}
%\keyword{segregation}% __ONLY ONE__ keyword per line
\concept{segregation ratio}% __ONLY ONE__ keyword per line
\concept{dominant marker}
\concept{autopolyploid}
\concept{polyploid}
