\name{addMissing}
\alias{addMissing}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Adds missing data to objects of class autoMarker or autoCross}
\description{
  Adds missing data to objects of class \code{simAutoMarkers} or
  \code{simAutoCross} as specified either as a proportion of missing at
  random or a proportion  of columns and rows with specified proportions
  of missings.
}
\usage{
addMissing(x, na.proportion = 0, parent.cols = c(1, 2), seed)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ object of class \code{simAutoMarkers} or \code{simAutoCross},
    or a \code{matrix} with dominant markers scored as 0 or 1}
  \item{na.proportion}{proportion missing at random or a list with
    two components indiv and marker each containing
    c(prop. markers missing, prop. missing) (Default: 0)}
  \item{parent.cols}{columns containing parental markers (etc) not
    altered only used if object of class \code{simAutoCross}}
  \item{seed}{random number generator (RNG) state for random number
    which will be set at start to reproduce results}
}
\value{
  Returns object of class \code{simAutoMarkers} or \code{simAutoCross}, or a
  \code{matrix} with dominant markers scored as 0 or 1 with extra
  component na.proportion
  which has the following elements
  \item{na.proportion }{proportion missing at random or a list
    with two components indiv and marker each containing
    c(prop. markers missing, prop. missing)}
  \item{time.generated }{time/date when data set generated + when missing added}
  \item{seed }{random number generator seed which could be used to
    reproduce results (I hope)}
  \item{ call}{matches arguments when function called}
}
\author{Peter Baker \email{drpetebaker@gmail.com}}
\seealso{
  \code{\link{addMisclass}} misclassifies markers at random,
  \code{\link{sim.autoMarkers}} simulate autopolyploid markers,
  \code{\link{sim.autoCross}} simulate autopolyploid markers for a cross
}
\examples{
## simulate autopolyploid markers
p1 <- sim.autoCross(4, dose.proportion=c(0.7,0.3), n.markers=20, n.indiv=10)
p2 <- sim.autoCross(4, dose.proportion=list(p01=c(0.7,0.3),p10=c(0.7,0.3),p11=c(
0.6,0.2,0.2)))

## add missings
addMissing(p2, 0.1)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{datagen}
\keyword{manip}% __ONLY ONE__ keyword per line
