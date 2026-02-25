\name{simAutoCross}
\alias{simAutoCross}
\title{S3 class simAutoCross}
\description{ An S3 class which contains  simulated dominant marker data
  for autopolyploids and other data of interest such as segregation
  proportions as well as parameters set for the generating given
  parents with \sQuote{01}, \sQuote{10} and \sQuote{11} markers
}
\value{
  \item{markers}{matrix of 0,1 dominant markers with individuals as
    cols and rows as markers}
  \item{true.dosage}{\emph{true} doses for each marker}
  \item{name.true.dose}{names of \emph{true} doses for each marker}
  \item{p10}{object of class \code{simAutoMarkers} for parental
    type \sQuote{10}}
  \item{p01}{object of class \code{simAutoMarkers} for parental
    type \sQuote{01}}
  \item{p11}{object of class \code{simAutoMarkers} for parental
    type \sQuote{11}}
  \item{ploidy.level}{the number of homologous chromosomes as numeric
    (single value)}
  \item{prop.par.type}{proportion of markers for each parental type
    \sQuote{p01}, \sQuote{p10} and \sQuote{p11}}
  \item{n.markers}{number of markers (Default: 500)}
  \item{n.individuals}{number of individuals in the cross (Default: 200)}
  \item{dose.proportion}{proportion in each dose, if numeric vector is
    the same for \sQuote{p01}, \sQuote{p10} and \sQuote{p11} else a list
    with components \sQuote{p01}, \sQuote{p10} and \sQuote{p11}}
  \item{no.dosage.classes}{number in each dosage class}
  \item{no.parType}{number in each parental type}
  \item{time.generated}{time and date when data set generated}
  \item{seed}{seed for random number generator seed which could be used to
    reproduce results (hopefully)}
  \item{call}{matches arguments when function called}
}
\author{Peter Baker \email{drpetebaker@gmail.com}}
\seealso{\code{\link{sim.autoCross}},\code{\link{simAutoMarkers}},
  \code{\link{sim.autoMarkers}} }
\keyword{manip}
\concept{segregation ratio}
\concept{dominant marker}
\concept{autopolyploid}
\concept{polyploid}
