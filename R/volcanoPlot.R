#' Makes, and optionally saves volcano plots
#' @export

volcanoPlot <- function(data,xcol,ycol,ss=0.05,bs=log2(2),
                    s0="No Significance",
                    s1="Statistical Significance",
                    s2="Biological Significance",
                    title="Volcano Plot",
                    xtitle=expression(Log[2]~Fold~Change),
                    ytitle=expression(-Log[10]~BH~Ajusted~P~values),
                    labeldata,
                    labelcat,
                    file,
                    colors) {
  if(!missing("file")){
    pdf(file=paste0(file,".pdf"),
        width = 12,
        height = 10)
  }
  plot<-ggplot2::ggplot(data=data,
               ggplot2::aes(x=eval(parse(text=xcol)), y=-log10(eval(parse(text=ycol))),
                   color=dplyr::case_when(
                     eval(parse(text=ycol)) < ss &
                       abs(eval(parse(text=xcol))) > bs ~ s2,
                     eval(parse(text=ycol)) < ss &
                       abs(eval(parse(text=xcol))) < bs ~ s1,
                     TRUE ~ s0))) +
    ggplot2::geom_point()+
    ggplot2::geom_hline(yintercept=-log10(ss))+
    ggplot2::geom_vline(xintercept=c(bs,-bs))+
    ggplot2::scale_color_manual(name="Significance",values=colors) +
    ggplot2::ggtitle(title)+
    ggrepel::geom_text_repel(data=labeldata,ggplot2::aes_string(label=labelcat))+
    ggplot2::xlab(xtitle)+
    ggplot2::ylab(ytitle)
  print(plot)
  if(!missing("file")){
    dev.off()
  }
}
