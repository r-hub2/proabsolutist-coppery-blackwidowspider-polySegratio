\name{addMisclass}
\alias{addMisclass}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Misclassifies marker data in objects of class autoMarker or autoCross}
\description{
  Marker data are misclassified at a specified rate for  objects
  of class \code{simAutoMarkers} or \code{simAutoCross}. The rate may be
  specified either as a proportion of missing at random or a proportion
  of columns and rows with specified proportions of missings.
}
\usage{
addMisclass(x, misclass = 0, bands.missed=0, parents = FALSE, parent.cols = c(1, 2), seed)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
\item{x}{object of class \code{simAutoMarkers} or \code{simAutoCross}, or a matrix with dominant markers scored as 0 or 1}
\item{misclass}{ proportion misclassified specified as for na.proportion (Default: 0)}
\item{bands.missed}{proportion of bands that are not scored when they
  are actually present. Note this is applied to correctly specified markers after markers are misclassified (Default: 0)}
\item{parents}{if TRUE then misclassify parental alleles, otherwise misclassify offspring marker alleles}
\item{parent.cols}{for object of simAutoClass the columns containg parental markers}
\item{seed}{ random number generator (RNG) state for random number which will be set at start to reproduce results}
}
\value{
 returns object of class \code{simAutoMarkers} or \code{simAutoCross},
 or a matrix with dominant markers scored as 0 or 1 with extra components
 \item{misclass.info }{list with components
   \itemize{
     \item \code{proportion} numeric proportion misclassified
     \item \code{index} indicates which markers were set as misclassified
     \item \code{bands.proportion} numeric proportion marker bands missed
     \item \code{bands.index} indicates which markers bands were missed
     \item \code{call} matches arguments when function called
     \item \code{time.generated} time/date when misclassifieds added
     \item \code{seed} seed for random number generation
   }
 }
 }
\author{Peter Baker \email{drpetebaker@gmail.com}}
\seealso{ \code{\link{addMissing}} add missing  markers at random,
  \code{\link{sim.autoMarkers}} simulate autopolyploid markers,
  \code{\link{sim.autoCross}} simulate autopolyploid markers for a cross
}
  
\examples{
## simulate autopolyploid markers
p1 <- sim.autoCross(4, dose.proportion=c(0.7,0.3), n.markers=20, n.indiv=10)
p2 <- sim.autoCross(4, dose.proportion=list(p01=c(0.7,0.3),p10=c(0.7,0.3),p11=c(
0.6,0.2,0.2)))

## add misclassified for a whopping 20\% of markers
print(addMisclass(p1, 0.2, parents=TRUE), row=1:20)
addMisclass(p2, 0.1)          
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{datagen}
\keyword{manip}% __ONLY ONE__ keyword per line
