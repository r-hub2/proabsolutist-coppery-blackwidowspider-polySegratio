\name{plot.segRatio}
\alias{plot.segRatio}
\alias{plot.simAutoMarkers}
\alias{plot.simAutoCross}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Plot segregation ratios for either observed or simulated marker data}
\description{
  Plots an object of S3 class \code{segRatio}
}
\usage{
\method{plot}{segRatio}(x, main =
deparse(substitute(x)), xlab="", xlab.segRatio = "Segregation ratio",
xlab.nobs = "Number of dominant markers",
xlab.miss = "Number of missing markers per individual",
NCLASS = 100, type = c("seg.ratio", "all","no","missing"), \dots)

\method{plot}{simAutoMarkers}(x, main = deparse(substitute(x)), xlab = "Segregation ratio",\dots)

\method{plot}{simAutoCross}(x, main = deparse(substitute(x)), xlab = "Segregation ratio",
\dots)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ An object of class \code{segRatio} }
  \item{xlab}{label for x axis: not usually set}
  \item{main}{ Title for plot }
  \item{xlab.segRatio}{ x--axis label when plotting segregation proportions }
  \item{xlab.nobs}{ x axis label when plotting no. of 1's }
  \item{xlab.miss}{  x axis label when plotting number of missing
    individuals per marker}
  \item{NCLASS}{ number of classes for histograms (Default: 100)}
  \item{type}{type of plot may be set to
    \itemize{
      \item \code{seg.ratio} Histogram of segregation proportions (Default)
      \item \code{no} Histogram of the number of 1s
      \item \code{missing} Histogram of the numbers of missing values
	per marker
      \item \code{all} Produce all plots on one page
    }
  }
  \item{\dots}{ other parameters passed to plot function }
}
\details{
  By default the histograms are produced of the segregation proportions.
  Other histograms that may be produced are numbers of observed
  dominant markers (recorded as a 1) and the number of
  individuals missing a particular marker.
}
\value{
  Used for its side-effects
}
\author{Peter Baker \email{drpetebaker@gmail.com}}
\seealso{ \code{\link{segRatio}}, \code{\link{segregationRatios}},
  \code{\link{sim.autoMarkers}}, \code{\link{sim.autoCross}} }
\examples{

## generate some autooctoploid data
a <- sim.autoMarkers(8,c(0.7,0.2,0.09,0.01))

## print markers and plot segratios
print(a)
plot(a$seg.ratios)  # plot the segregation ratios directly
plot(a)             # plot the simAutoMarkers object

## add some missing values and plot all histograms
plot(addMissing(a,0.2)$seg.ratios, type="all")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{manip}
%\keyword{graphics}% __ONLY ONE__ keyword per line
\concept{segregation ratio}% __ONLY ONE__ keyword per line
\concept{dominant marker}
\concept{autopolyploid}
