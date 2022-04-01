#' Plots and optionallys saves pairwise Venn Diagrams
#' @export

plotPairVenn <- function(nums,colors,names,file) {
  if(!missing("file")){
    pdf(file=paste0(file,".pdf"),
        width = 8,
        height = 5)
  }
  grid::grid.newpage()
  VennDiagram::draw.pairwise.venn(area1 = nums[1]+nums[3],
                     area2 = nums[2]+nums[3],
                     cross.area = nums[3],
                     col = colors[1],
                     fill = colors[2:3],
                     ext.text=FALSE,
                     category = names,
                     lty = 0,
                     cat.fontfamily = "sans",
                     fontfamily = "sans")

  if(!missing("file")){
    dev.off()
  }
}
