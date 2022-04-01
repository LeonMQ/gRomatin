\name{plotPCA}
\alias{plotPCA}
\title{Performs, plots and optionally saves PCA}
\usage{
  plotPCA(sampledata, countdata, symbolcol, stat="var", number=500, interest,
          mainTitle,subTitle="",caption="",file)
}
\arguments{
  \item{sampledata}{data.table containing participant data. Must be given as
  character(enclosed in qoutes). Rows must be participants, columns must
  variables (like age,sex, participant ID etc)}
  \item{countdata}{data.table or matrix containing the gene count data. Rows
  must be genes, columns must be participants. Must be given as character (
  enclosed in quotes
  )}
  \item{symbolcol}{The name of the participant ID column in sampledata. Must
  be given as character (enclosed in qutes)}
  \item{stat}{Statistical test to be run on the rows of countdata. Must be
  given as character (enclosed in quotes). Test is var by default}
  \item{number}{How many genes to include in the PCA. By default 500, so it will
  include the 500 most variable genes in the PCA}
  \item{interest}{The variable you are looking for seperation in, a column name
  form sampledata. Must be given as character (enclosed in quotes)}
  \item{mainTitle}{The main title of the plot. Must be given as character.}
  \item{subTitle}{The sub title of the plot. Must be given as character. By
  default it is blank}
  \item{caption}{The caption of the plot. Must be given as character. By
  default it is blank}
  \item{file}{Name of where the file should be saved. If it is empty it will
  return the plot without saving}
}
\description{
  Takes count data and participant data and performs then plots the principal
  components of the count data, coloring according to some feature of the
  participant data
}
