#' @title ggplot2 academic theme
#' @rdname theme_basic
#' @export
theme_academic = function(
    family = "Times New Roman",
    color_text = "black",
    hjust_axis_title_x = 1,
    vjust_axis_title_y = 1,
    color_axis_title = "black",
    margin_axis_titlex_b = 0,
    size_grid_major_line = .3,
    margin_legend_t = -20,
    pos_legend = "bottom",
    panel_spacing = 1,
    color_ticks_x = "black",
    color_line_x = "black",
    length_ticks = .1,
    ...
  ) {
  do.call(theme_basic, dtools::match_call())
}
