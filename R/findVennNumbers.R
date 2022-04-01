#' Finds the numbers needed for Venn Diagramms
#' @export

findVennNumbers <- function(D,E) {
  UDE <- unique(c(D,E))
  LUDE <- length(UDE)
  SDE <- sum(D %in% E, na.rm=TRUE)
  NSDE <- LUDE - SDE
  UD <- length(D)-SDE
  UE <- length(E)-SDE
  return(c(UD,UE,SDE))
}
