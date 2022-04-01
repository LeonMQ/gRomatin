\name{saveSummaryTable}
\alias{saveSummaryTable}
\title{Converts a summarise output to a latex table}
\usage{
  saveSummaryTable(sumfunc,long=NULL,short=NULL,rows=FALSE,app=FALSE,
                   filename,lab=NULL)
}
\arguments{
  \item{sumfunc}{The summarise() function that should be converted. The function
    can be assigned beforehand}
  \item{long}{The caption for the table}
  \item{short}{The short name of the table for the "List of tables"}
  \item{rows}{Boolean, if the outputted table should have row numbers. By
    default set to false}
  \item{app}{Should the output file be appended with the table or should it
    overwrite the outputfile.}
  \item{filename}{Name of the output file}
  \item{lab}{LaTeX label for the table. By default suppressed}
}
\description{
Converts tibble summarise tables to latex tables for convient use in papers
}

