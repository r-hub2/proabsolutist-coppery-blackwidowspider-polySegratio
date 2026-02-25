\name{sim.autoMarkers}
\alias{sim.autoMarkers}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Simulates dominant markers from an autopolyploid cross}
\description{
  Dominant markers are simulated from an autopolyploid cross given the
  ploidy level, expected segregation ratios and the proportions in
  each dosage marker class. This may be chosen from tetraploid to
  heccaidecaploid and the segregation ratios may be specified
  explicitly or generated automatically.
}
\usage{
sim.autoMarkers(ploidy.level, dose.proportion, n.markers = 500,
n.individuals = 200, seg.ratios, no.dosage.classes,
type.parents = c("heterogeneous", "homozygous"),
marker.names = paste("M", 1:n.markers, sep = "."),
individual.names = paste("X", 1:n.individuals, sep = "."),
overdispersion=FALSE, shape1=50, seed)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ploidy.level}{the number of homologous chromosomes, either as
    numeric (single value) or as a character string containing
    type tetraploid, hexaploid, octoploid, \dots}
  \item{dose.proportion}{ the proportion of markers to be simulated in
    each dosage class. Note that the exact number will be randomly
    generated from the multinomial distribution}
  \item{n.markers}{number of markers (Default: 500)}
  \item{n.individuals}{number of individuals in the cross (Default: 200)}
  \item{seg.ratios}{numeric vector containing segregation proportion to
    be supplied if you wish to override automatic calculations using
    ploidy.level}
  \item{no.dosage.classes}{only generate markers for the first
    \code{no.dosage.classes} classes (if set)}
  \item{type.parents}{heterogeneous for (1,0) or (0,1) homozygous for
    (1,1) (default: heterogeneous)}
  \item{marker.names}{labels for markers (Default: M.1 \dots M.n.markers)}
  \item{individual.names}{ labels for offspring (Default: \dots X.j \dots )}
  \item{overdispersion}{logical indicating overdispersion (Default:
  FALSE)}
  \item{shape1}{shape1 parameter(s) for the beta distribution used to
  generate the Binomial probability p, either of length 1 or
  no.dosage.classes. Default: 50 which implies very little
  overdispersion. NB: 'shape2' is calculated from shape 1 and
  expected segregation ratios}
  \item{seed}{ integer used to set seed for random number generator
    (RNG) which (if set) may be used to reproduce results}
}
\value{
  Returns an object of class \code{\link{simAutoMarkers}} containing
  \item{markers}{ matrix of 0,1 dominant markers with individuals as cols and
    rows as markers}
  \item{E.segRatio}{expected segregation proportions, list with
    components
  \itemize{
      \item \code{ratio} segregation proportions,
      \item \code{ploidy.level} level of ploidy 4,6,8, \dots,
      \item \code{ploidy.name} tetraploid, \dots , unknown
    }
  }
  \item{type.parents}{heterogeneous for (1,0) or (0,1) homozygous for (1,1)}
  \item{dose.proportion}{proportions of markers set for each dosage class}
  \item{n.markers}{number of markers (Default: 500)}
  \item{n.individuals}{number of individuals in the cross (Default: 200)}
  \item{true.doses}{list containing
  \itemize{
      \item \code{dosage}  doses generated for each marker for simulation,
      \item \code{table.dosages} summary of no.s in each dosage,
      \item \code{names} names for each dosage such as SD (single dose),
	DD (double dose), SDxSD etc
    }
  }
  \item{seg.ratios}{object of class segRatio containing segregation ratios}
  \item{time.generated}{time/date when data set generated}
  \item{seed}{seed for random number generator seed which could be used to
    reproduce results (I hope)}
  \item{overdispersion}{either a list with components 'overdispersion':
    logical for whether overdispersion is set or not and if TRUE then
    two extra components 'shape1' and 'shape2' contain parameters for
    the beta distribution employed to generate Binomial probabilities}
  \item{call}{matches arguments when function called}
}
\author{Peter Baker \email{drpetebaker@gmail.com}}
\note{
For  use in simulation studies, other parameters such as the true dosage
of each marker are also returned. Also, if extra binomial variation or
overdispersion is requested then a beta-binomial distribution is
employed to simulate marker data.Note that as the 'shape1' parameter
becomes larger, the resulting marker data are less overdispersed.
}
\seealso{ \code{\link{simAutoMarkers}},
  \code{\link{print.simAutoMarkers}},  
  \code{\link{plot.simAutoMarkers}},
  \code{\link{segRatio}}}
\examples{

## generate autopolyploid markers
a1 <- sim.autoMarkers(4,c(0.8,0.2),n.markers=20,n.individuals=10)
print(a1)

a2 <-
sim.autoMarkers(8,c(0.7,0.2,0.09,0.01),type.parents="homo",n.markers=20,n.individuals=10)
print(a2)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{manip}
%\keyword{segregation}% __ONLY ONE__ keyword per line
\concept{segregation ratio}% __ONLY ONE__ keyword per line
\concept{dominant marker}
\concept{autopolyploid}
