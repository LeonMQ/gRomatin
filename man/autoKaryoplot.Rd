\name{autoKaryoplot}
\alias{autoKaryoplot}
\title{Plots and optionally saves karyoplots}
\usage{
  autoKaryoplot(chros,gename,dat,colmn,maxf,hmin,ylab,dotsz,colors,vlim,bgs,
                bglab,bgfc,gmu,title,file,dens)
}
\arguments{
  \item{chros}{A vector of the desired chromosomes to be plotted. It can be a
    single chromosome given as a string}
  \item{gename}{the genome to plot, it can be a UCSC, BSgenome, Seqinfo or
    GRanges object. Must be given as a string}
  \item{dat}{A GRanges object that contains the data to be plotted}
  \item{colmn}{The numeric vector with the values to be plotted}
  \item{maxf}{A function that defines maximum value of the y axis}
  \item{hmin}{If this is set to 0 the minimum value of the y axis will be 0. If
    this si set to 1 the minimum vale of the y axis will be the negative value
    of maxf}
  \item{ylab}{The label for the y axiz, can be given as a character e.g.
    "Log 2 fold change", or an expression e.g. expression(log[2]~Fold~change)}
  \item{dotsz}{A numerical vector to determine what size the dots in the plot
    shoud be}
  \item{colors}{A character vector defining what the colors of the dots should
    be}
  \item{vlim}{The physical limits of the size of the dot plot}
  \item{bgs}{A GRanges object defining the genes of interest}
  \item{bglab}{The column of the bgs that contains the gene names}
  \item{bgfc}{The coloumn of the bgs that cotains the fold change values}
  \item{gmu}{The gene means}
  \item{title}{The title of the plot}
  \item{dens}{GRanges object containing the density data. If it is not included,
    no density plot will be made}
  \item{file}{The file location for the Karyoplots,given as character, without
    chromosome names, as that is appended automatically. If no file location is
    given it will not save the karyoplots and print them instead}
}
\description{Simplifies the ploting and saving of a pairwise Karyoplots
}

