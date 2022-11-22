#' @rdname theme_basic
#' @param ... theme_basic arguments
#' @export
theme_boxplot = function(
    family = "Times New Roman",
    color_text = "black",
    hjust_axis_title_x = 1,
    vjust_axis_title_y = 1,
    color_grid = "darkgray",
    color_axis_title = "black",
    color_plot_background = "black",
    margin_axis_title_x_b = 0,
    color_strip_background = NA,
    fill_strip_background = NA,
    halign_strip_text = 0,
    margin_legend_t = 0,
    margin_strip_t = 5,
    margin_strip_r = 0,
    margin_strip_b = 2,
    margin_strip_l = 0,
    padding_strip_t = 5,
    padding_strip_r = 0,
    padding_strip_b = 0,
    padding_strip_l = 0,
    size_grid_major_line_y = NA,
    size_grid_major_line_x = .1,
    size_ticks = NA,
    size_line = NA,
    pos_legend = "top",
    panel_spacing = 1,
    color_ticks_x = "black",
    color_line_x = "black",
    length_ticks = .1,
    linetype_grid = "dashed",
    ...
) {
  do.call(theme_basic, dtools::match_call()) +
    ggplot2::theme(
      axis.title.y = ggplot2::element_blank(),
      axis.text.y = ggplot2::element_blank()
    )
}














