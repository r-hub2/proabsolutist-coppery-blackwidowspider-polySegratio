\name{autoFill}
\alias{autoFill}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Automatically fill out blanks of a vector with the preceding label }
\description{
  \code{autoFill} is commonly used to generate labels from columns of a
  spreadsheet when many cells are left blank in order to save a lot of
  typing. For instance, c("a","","","b","") becomes
  c("a","a","a","b","b")
}
\usage{
autoFill(x, squash = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{a vector of character strings}
  \item{squash}{ If set to TRUE then 
  leading and trailing spaces are removed which is useful if spaces are
  inadvertantly typed because these may be hard to track down. Default: FALSE}
}
\value{
  \item{x }{a vector of character strings with blank strings replaced by
  preceding non--blank strings}
}
\author{Peter Baker \email{drpetebaker@gmail.com}}
\note{ While this function may be called directly, it is more often
  called by \code{makeLabel}
}
\seealso{ \code{\link{makeLabel}} uses \code{autoFill} to create labels
  from two columns of marker names }
\examples{
  ## description: fill out blanks of a vector with preceeding label
  label.1 <- c("a","","","b","")
  print(autoFill(label.1))

  label.2 <- c("agc","","","","gct5","","ccc","","")
  print(autoFill(label.2))
}
\keyword{manip}
\keyword{category}

