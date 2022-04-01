#' Calculates some statistic row-wise
#' @export

rowStat <-function(table,stat="var"){
  val <- c()
  for (i in 1:nrow(table)){
    val <- append(val,eval(parse(text=stat))(table[i,]))
  }
  name<-rownames(table)
  out<-data.frame(val,name)
  return(out)
}
