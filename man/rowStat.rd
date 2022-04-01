\name{rowStat}
\alias{rowStat}
\title{row-wise stats on a table}
\usage{
  rowStat(table,stat="var")
}
\arguments{
  \item{table}{The table or matrix from which the data is taken}
  \item{stat}{The statistical test to be run on the rows, as a character
    (enclosed inqoutes). Default test is variance}
}
\description{
  Perfrorms statistical test on the rows of some table and saves the output to a
  dataframe containing the values in a val columns and rownames in a name
  columns
}
\examples{
## Dummy data
dummy<-matrix(c(1:500),nrow=10,dimnames=list(letters[1:10],c(1:50)))
dummyvar<-rowStat(dummy)
dummymean<-rowStat(dummy,stat="mean")
}
