\name{divide.autoMarkers}
\alias{divide.autoMarkers}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Divide markers by parental type}
\description{
  Given  markers (or more correctly dominant 1,0) marker data
  and return list object of containing markers data split
  according to parental alleles, namely 1,0 for each parent and
  1,1 for both parents
}
\usage{
divide.autoMarkers(markers, description = paste("Markers split for",
deparse(substitute(markers))), parent.cols = c(1, 2),
extra.cols = NULL, cols.drop = c(parent.cols, extra.cols))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{markers}{ matrix of 1, 0, NA indicating marker alleles where
    rownames are markernames, column names are progeny names}
  \item{description}{ text containing a description for printing}
  \item{parent.cols}{ column(s) for parental markers (default: 1,2)}
  \item{extra.cols}{ extra column(s) to be subsetted (default: NULL)}
  \item{cols.drop}{ columns to be dropped from markers before splitting
    data which can be set to NULL if no columns are to be dropped
    (Default: c(parent.cols,extra.cols))
  }
}
\value{
  Returns S3 class \code{divideAutoMarkers} containing
  \item{p10, p01, p11}{lists for where the first, second components are
    heterozygous for parents 1, 2 and both resp. Each list contains
    \itemize{
      \item \code{description} text containing a description for printing
      \item \code{parent} label for parent
      \item \code{markers} markers for specified parental type (including parents etc)
      \item \code{extras} extra columns subsetted (if specified)
      \item \code{seg.ratios} segregation ratios as class \code{segRatio}
    }
  }
}
\author{Peter Baker \email{drpetebaker@gmail.com}}
\seealso{ \code{\link{segRatio}}, \code{\link{sim.autoCross}}
}
\examples{

p2 <- sim.autoCross(4,
dose.proportion=list(p01=c(0.7,0.3),p10=c(0.7,0.3),
                     p11=c(0.6,0.2,0.2)))
print(p2)

ss <- divide.autoMarkers(p2$markers)

print(ss)
}
\keyword{manip}
\concept{segregation ratio}% __ONLY ONE__ keyword per line
\concept{dominant marker}
\concept{autopolyploid}
\concept{polyploid}
