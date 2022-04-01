\name{volcanoLabels}
\alias{volcanoLabels}
\title{Creates a data frame of labels for a volcano plot}
\usage{
  volcanoLabels(data,p,alpha=0.05,lfc,beta=log2(2))
}
\arguments{
  \item{data}{The input data frame of RNAseq containing the p values and log
    fold change of genes, where the rows are genes. Given as character
    (enclosed in quotes)}
  \item{p}{The name of the column that contains the p values. Given as character
    (enclosed in quotes)}
  \item{alpha}{The p value cut off, 0.05 by default}
  \item{lfc}{The name of the column that contains the log fold change. Given as
    character (enclosed in quotes)}
  \item{beta}{The cut off value for the log fold change. By default log2(2)}
}
\description{
  Creates a data frame of labels for a volcano plot
}

