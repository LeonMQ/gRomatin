#' Generates karyoplots for selected chromosomes, optional density and file saving
#' @export


autoKaryoplot <- function(chros, gename, dat,colmn,maxf,hmin,ylab,dotsz,colors,
                          vlim,bgs,bglab,bgfc,gmu,title,file,dens) {
  for (i in 1:length(chros)) {
    if(!missing("file")) {
      pdf(file =
            paste0(file,chros[i],".pdf"),
          width = 10,
          height = 4.5)
    }
    kp<-karyoploteR::plotKaryotype(genome=gename,chromosomes=chros[i],plot.type=2)
    karyoploteR::kpAddMainTitle(kp,main=title)
    karyoploteR::kpPoints(kp,data=dat,y=colmn,ymax=maxf,cex=dotsz,r1=vlim,col=colors,
             ymin=dplyr::case_when(hmin==1 ~ -maxf,
                            hmin==0 ~ 0))
    karyoploteR::kpAxis(kp,ymax=maxf,r1=vlim,
           ymin=dplyr::case_when(hmin==1 ~ -maxf,
                          hmin==0 ~ 0))
    karyoploteR::kpAddLabels(kp, labels = ylab, srt=90, pos=1, label.margin = 0.05,r1=vlim)
    karyoploteR::kpPlotMarkers(kp,data=bgs,labels=bglab,text.orientation="horizontal",
                  r0=vlim)
    karyoploteR::kpSegments(kp,chr=as.character(GenomeInfoDb::seqnames(bgs)),x0=gmu,x1=gmu,y0=bgfc,
               y1=maxf,ymax=maxf,r1=vlim,
               ymin=dplyr::case_when(hmin==1 ~ -maxf,
                              hmin==0 ~ 0))
    if(!missing("dens")){
      karyoploteR::kpPlotDensity(kp, data=dens, data.panel = 2)
    }
    if(!missing("file")){
      dev.off()
    }
  }
}
