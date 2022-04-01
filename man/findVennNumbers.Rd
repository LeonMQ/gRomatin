\name{findVennNumbers}
\alias{findVennNumbers}
\title{Determines the numbers needed for a pairwise Venn Diagramm}
\usage{
  findVennNumbers(D,E)
}
\arguments{
  \item{D}{The column of a data frame to be compared}
  \item{E}{The column of a data frame to be compares}
}
\description{
  Takes 2 columns of data frames, determines the number of values unique to each
  and number of values shared in both. The output is a vector of 3 numbers,
  unique to D, unique to E and shared in D and E. The columns can be from the
  same dataframe or from different dataframes.
}
\examples{
  # Different dataframe
  ##findVennNumbers(dataframe1$namecolumn,dataframe2$namecolumn)
  # same data frame
  ##findVennNumbers(dataframe1$namecolumn1,dataframe1$namecolumn2)
}

