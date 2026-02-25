\name{makeLabel}
\alias{makeLabel}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Generate labels from two columns where blanks in first column
  are replaced by preceding non--blank label}
\description{
  Primarily used to generate marker labels from two columns where the
  first column is a nucleotide sequence which is mainly blank in
  that it is the same as the previous one while the second column
  is increasing numbers (fragment size) for each nucleotide
  combination
}
\usage{
makeLabel(x, columns = c(1, 2), squash = TRUE, sep = "")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{data frame of markers including labels}
  \item{columns}{ the column numbers containing labels (default: c(1,2))}
  \item{squash}{ remove trailing/leading blanks in 1st column (default:TRUE) }
  \item{sep}{ separator when combining two label columns (default: "")}
}
\value{
  returns vector of marker names
}
\author{Peter Baker \email{drpetebaker@gmail.com}}
\seealso{ \code{\link{autoFill}} is used to replace blanks in first column}
\examples{

  ## imaginary data frame representing ceq marker names read in from
  ## spreadsheet
  x <- data.frame( col1 = c("agc","","","","gct5","","ccc","",""),
                   col2 = c(1,3,4,5,1,2,2,4,6))
  print(x)
  print(makeLabel(x))
  print(cbind(x,lab=makeLabel(x, sep=".")))
}
\keyword{manip}
\keyword{category}
