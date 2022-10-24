#' @title ggplot2 academic theme
#' @export
theme_academic = function(
    color_text = "black",
    #size_axis = 12,
    hjust_axis_title_x = 1,
    vjust_axis_title_y = 1,
    color_axis_title = "black",
    ...
  ) {
  do.call(theme_basic, match_call())
}
