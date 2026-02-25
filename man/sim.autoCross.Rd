\name{sim.autoCross}
\alias{sim.autoCross}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Simulate dominant markers for an autopolyploid cross for all
  parental types }
\description{
 Simulates dominant markers from an autopolyploid cross given the ploidy
 level and/or expected segregation ratios and the proportions in each
 dosage marker class. This is a wrapper to \code{sim.autoMarkers} to
 generate markers for \sQuote{10}, \sQuote{01} and \sQuote{11} parents
}
\usage{
sim.autoCross(ploidy.level, prop.par.type = structure(c(0.4, 0.4, 0.2),
names = c("p10", "p01", "p11")), n.markers = 500, n.individuals = 200,
dose.proportion, true.seg.ratios, no.dosage.classes,
marker.names = paste("M", 1:n.markers, sep = "."),
individual.names = paste("X", 1:n.individuals, sep = "."),
parent.names = c("P.1", "P.2"), seed)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ploidy.level}{the number of homologous chromosomes, either as
    numeric (single value) or as a character string containing
    type tetraploid, hexaploid, octoploid, \dots}
  \item{prop.par.type}{ the proportion of markers generated from each
    parental type '10', '01' and '11'. Note that the exact number will
    be randomly generated from the multinomial distribution
    (Default: c(0.4,0.4,0.2))}
  \item{n.markers}{ number of markers (Default: 500)}
  \item{n.individuals}{ number of individuals in the cross (Default: 200)}
  \item{dose.proportion}{ the proportion of
    markers to be simulated in each dosage class. Note that the exact
    number will be randomly generated from the multinomial distribution
    NB: If a vector is supplied the dose.proportion is same for each
    parental type otherwise as list with components \sQuote{p01},
    \sQuote{p10} and \sQuote{p11}}
  \item{true.seg.ratios}{ numeric vector containing segregation
    proportion to be supplied if you wish to overide automatic
    calculations using ploidy.level}
  \item{no.dosage.classes}{numeric vector containing the number of
    dosage classes}
  \item{marker.names}{ labels for markers (Default: M.1 \dots M.n.markers)}
  \item{individual.names}{ labels for offspring (Default: \dots X.j \dots )}
  \item{parent.names}{ numeric vector of length 2 containing columns
    of marker matrix containing parental markers
    (Default: first 2 columns) }
  \item{seed}{ integer used to set seed for random number generator
    (RNG) which (if set) may be used to reproduce results}
}
\value{
  Returns an object of class \code{\link{simAutoCross}} containing
  \item{markers}{ matrix of 0,1 dominant markers with individuals as
    cols and rows as markers}
  \item{true.dosage}{\emph{true} doses for each marker}
  \item{name.true.dose}{names of \emph{true} doses for each marker}
  \item{p10}{object of class \code{simAutoMarkers} for parental
    type \sQuote{10} }
  \item{p01}{object of class \code{simAutoMarkers} for parental
    type \sQuote{01} }
  \item{p11}{object of class \code{simAutoMarkers} for parental
    type \sQuote{11} }
  \item{ploidy.level}{the number of homologous chromosomes as numeric
    (single value)}
  \item{prop.par.type}{proportion of markers for each parental type
    \sQuote{p01}, \sQuote{p10} and \sQuote{p11}}
  \item{n.markers}{ number of markers (Default: 500)}
  \item{n.individuals}{ number of individuals in the cross (Default: 200)}
  \item{dose.proportion}{proportion in each dose -- if numeric vector is
    the same for \sQuote{p01}, \sQuote{p10} and \sQuote{p11} else a list
    with components \sQuote{p01}, \sQuote{p10} and \sQuote{p11}}
  \item{no.dosage.classes}{number in each dosage class}
  \item{no.parType}{number in each parental type}
  \item{time.generated}{time/date when data set generated}
  \item{seed}{seed for random number generator seed which could be used to
    reproduce results (I hope)}
  \item{call}{matches arguments when function called}

}
\author{Peter Baker \email{drpetebaker@gmail.com}}
\note{
All parameters
except the proportions of marker dosage types can be left at the
default. If only one value is set, then individual list
components will be assumed to be equal. The marker matrix is
prepended with parental marker alleles. An alternative is to
simply create each group using sim.automarkers and cbind them.
}
\seealso{\code{\link{simAutoCross}},\code{\link{simAutoMarkers}},
  \code{\link{sim.autoMarkers}} }
\examples{
p1 <- sim.autoCross(4, dose.proportion=c(0.7,0.3), n.markers=20, n.indiv=10)
print(p1)

p2 <- sim.autoCross(4, dose.proportion=list(p01=c(0.7,0.3),p10=c(0.7,0.3),p11=c(0.6,0.2,0.2)))
print(p2)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{manip}
\concept{segregation ratio}% __ONLY ONE__ keyword per line
\concept{dominant marker}
\concept{autopolyploid}
\concept{polyploid}
