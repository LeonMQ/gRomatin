#' Saves outputs of summarise() as latex tables
#' @export

saveSummaryTable<-function(sumfunc,long=NULL,short=NULL,rows=FALSE,app=FALSE,
                      filename,lab=NULL) {
  cat(utils::capture.output(print(xtable::xtable(as.data.frame(sumfunc),
                                  caption=c(long,short),label=lab),
                           include.rownames=rows)),
      file=filename,sep="\n",append=app)
}
