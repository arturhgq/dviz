#' @title Match ggplot2 pt scale to text scale
#' @description `r lifecycle::badge("stable")`
#' This function matchs ggplot2 pt scale to text scale
#' @param size text scale size
#' @references
#' https://stackoverflow.com/questions/52304141/adjust-font-size-to-size-of-plot-device
#' https://stackoverflow.com/questions/17311917/ggplot2-the-unit-of-size
#' https://www.tidyverse.org/blog/2020/08/taking-control-of-plot-scaling/
#' https://www.christophenicault.com/post/understand_size_dimension_ggplot2/
#' @export
geom_text_fontsize <- \(size = 12) {
  size/ggplot2::.pt * .8
}
