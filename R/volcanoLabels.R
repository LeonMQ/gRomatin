#' Generates gene label for volcano plots
#' @export

volcanoLabels<-function(data,p,alpha=0.05,lfc,beta=log2(2)){
  outlab<-eval(parse(text=data))[(eval(parse(text=paste(data,"$",p))) < alpha &
                                    abs(eval(parse(text=paste(data,"$",lfc))) > beta)),]
}
