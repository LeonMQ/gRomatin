\name{plotPairVenn}
\alias{plotPairVenn}
\title{Plots and optionally saves a pairwise Venn Diagramm}
\usage{
  plotPairVenn(nums,colors,names,file)
}
\arguments{
  \item{nums}{A vector of 3 numbers where the first 2 are the amounts unique
    to the the 2 groups and the the final is the amount shared betwene the
    groups. The output of findVennNumbers can be used here}
  \item{colors}{A vector of colors to be used in the Diagramm}
  \item{names}{A vector of the names of the two groups}
  \item{file}{The filename in which the diagramm will be saved. If no file names
    is given then it will just print the diagramm without saving}
}
\description{Simplifies the ploting and saving of a pairwise venn diagramm
}
\examples{
  data1<-data.frame(char=letters[1:4],num=c(1:4))
  data2<-data.frame(char=letters[2:5],num=c(1:4))
  plotPairVenn(nums=findVennNumbers(data1$char,data2$char),
               colors=c("black","blue","red"),names=c("1","2"))
}

