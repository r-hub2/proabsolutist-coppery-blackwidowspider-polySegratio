\name{simAutoMarkers}
\alias{simAutoMarkers}

\title{S3 class simAutoMarkers}
\description{
  An S3 class which contains the simulated dominant marker data for
  autopolyploids and other data of interest such as segregation
  proportions as well as parameters set for the generating
}
\value{
 \item{markers}{ matrix of 0,1 dominant markers with individuals as cols and
   rows as markers}
 \item{E.segRatio}{expected segregation porportions, list with components
   \code{ratio}: segregation proportions, \code{ploidy.level}: level of
   ploidy 4,6,8, \dots, \code{ploidy.name}: tetraploid, \dots , unknown
 }
 \item{ploidy.level}{the number of homologous chromosomes, either as
   numeric (single value) or as a character string containing
   type tetraploid, hexaploid, octoploid, \dots}
 \item{n.markers}{ number of markers (Default: 500)}
 \item{n.individuals}{ number of individuals in the cross (Default: 200)}
 \item{dose.proportion}{ the proportion of markers to be simulated in
   each dosage class. Note that the exact number will be randomly
   generated from the multinomial distribution}
 \item{true.doses}{list containing
   \itemize{
   \item \code{dosage} doses generated for each marker for simulation
   \item \code{table.dosages} summary of no.s in each dosage
   \item \code{names} names for each dosage such as (SD) single dose,
     (DD) double dose, SDxSD etc
 }
 }
 \item{seg.ratios}{segregation proportions as class
   \code{\link{segRatio}}}
 \item{time.generated}{date and time data set generated}
 \item{call}{ function call used to generate data set}
}
\author{Peter Baker \email{drpetebaker@gmail.com}}
\seealso{ \code{\link{expected.segRatio}},
  \code{\link{segRatio}},
  \code{\link{print.simAutoMarkers}},  
  \code{\link{plot.simAutoMarkers}} }
\keyword{manip}
%\keyword{segregation}% __ONLY ONE__ keyword per line
\concept{segregation ratio}% __ONLY ONE__ keyword per line
\concept{dominant marker}
\concept{autopolyploid}
\concept{polyploid}


