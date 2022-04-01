\name{volcanoPlot}
\alias{volcanoPlot}
\title{Plots and optionally Saves a volcano plot}
\usage{
  volcanoPlot(data,xcol,ycol,ss=0.05,bs=log2(2),s0="No Significance",
              s1="Statistical Significance",s2="Biological Significance",
              title="Volcano Plot",xtitle=expression(Log[2]~Fold~Change),
              ytitle=expression(-Log[10]~BH~Ajusted~P~values),
              labeldata,labelcat,file,colors)
}
\arguments{
  \item{data}{The input data frame of RNAseq data to be plotted.}
  \item{xcol}{The log fold change column of the data frame to be plotted on the x
    axis. Must be given as character (enclosed in quotes)}
  \item{ycol}{The p-value column of the data frame, to be plotted on the y axis.
    Must be given as character (encolsed in quotes)}
  \item{ss}{The p value threshold for statistical significance. By default 0.05}
  \item{bs}{The log fold change threshold for magnitude significance. By default
    log2(2)}
  \item{s0}{Scale name for the values that do not exceed ss. By default "No
    Significance"}
  \item{s1}{Scale name for values that exceed ss but do not exceed bs. By
    default "Statistical Significance"}
  \item{s2}{Scake name for values that exceed both ss and bs. By default
    "Biological Significance"}
  \item{title}{The title for the plot. By default "Volcano Plot"}
  \item{xtitle}{The title for the x axis, By default
    expression(Log[2]~Fold~Change). Can be given as character(enclosed in
    quotes)}
  \item{ytitle}{The title fo teh y axis. By default
    expression(-Log[10]~BH~Ajusted~P~values). Can be given as character
    (enclosed in quotes)}
  \item{labeldata}{THe data frame of labels to be used on biologically
    significant genes. Output of volcanoLabels can be used}
  \item{labelcat}{The column of labeldata to be used as the source of labels.
    Must be given as character (enclosed in quutes)}
  \item{file}{File location  for the plot to be saved to. If no file is given it
    will just print the plot. Must be given as character, file extension
    excluded}
  \item{colors}{Vector of colors to be used on the plot}
}
\description{
  Single function to create volcano plots
}

