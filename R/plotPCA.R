#' Performs, plots and optionally saves PCA
#' @export

plotPCA<-function (sampledata, countdata, symbolcol, stat="var", number=500,
                   interest,mainTitle,subTitle="",caption="",file){
  statdata<-gRomatin::rowStat(eval(parse(text=countdata)),stat)

  top_genes<-statdata[order(statdata$val,
                            na.last=T,decreasing=T),]

  focused_genes<-eval(parse(text=countdata))[top_genes[1:number,"name"],]

  pca_values<-prcomp(t(focused_genes),scale=T)

  dat<-cbind(eval(parse(text=sampledata))[order(eval(parse(
    text=paste(sampledata,"$",symbolcol))),na.last=T),],
    pca_values$x[order(as.character(rownames(pca_values$x)),
                       na.last=T),1:2])
  if(!missing("file")){
    pdf(file=paste0(file,".pdf"),
        width = 6,
        height = 4)
  }

  plot<-ggplot2::ggplot(data=dat,ggplot2::aes(x=PC1,y=PC2,color=eval(parse(text=interest))))+
    ggplot2::geom_point()+
    ggplot2::stat_ellipse()+
    ggplot2::scale_color_manual(name=interest,values=Palette)+
    ggplot2::labs(title=mainTitle,
         subtitle=subTitle,
         caption=caption)
  print(plot)
  if(!missing("file")){
    dev.off()
  }
}
