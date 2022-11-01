#' @title ggplot2 themes
#' @export
theme_basic = function(
    family = "",
    size = 12,
    size_title = 12,
    size_subtitle = 10,
    size_caption = 10,
    size_strip = 10,
    size_axis = 10,
    size_axis_title = 12,
    size_grid_major_line = .5,
    size_legend = 10,
    margin_strip_t = 2,
    margin_strip_r = 0,
    margin_strip_b = 2,
    margin_strip_l = 0,
    margin_plot_t = 5,
    margin_plot_r = 5,
    margin_plot_b = 5,
    margin_plot_l = 5,
    margin_legend_t = 0,
    margin_legend_r = 0,
    margin_legend_b = 0,
    margin_legend_l = 0,
    margin_axis_title_x_b = 5,
    color_text = "gray30",
    color_axis_title = "gray30",
    color_ticks_x = NA,
    color_line_x = NA,
    color_strip_background = "grey86",
    fill_strip_background = "grey86",
    halign_strip_text = .5,
    face_strip_text = "plain",
    length_ticks = 0,
    hjust_axis_title_x= .5,
    vjust_axis_title_y = .5,
    angle_axis_title_y = 90,
    pos_legend = "top",
    panel_spacing = .4
#    axis_title_x = TRUE,
#    axis_title_y = TRUE
) {
  ggplot2::theme(
    text = ggplot2::element_text(
      size = size,
      color = color_text,
      lineheight = 1,
      family = family
    ),
    plot.margin = ggplot2::margin(
      t = margin_plot_t,
      r = margin_plot_r,
      b = margin_plot_b,
      l = margin_plot_l
    ),
    plot.title.position = "plot",
    plot.caption.position = "plot",
    plot.title = ggtext::element_textbox_simple(
      size = size_title,
      face = "bold",
      color = color("black"),
      margin = ggplot2::margin(0,0,2,0)
    ),
    plot.subtitle = ggtext::element_textbox_simple(
      size = size_subtitle,
      color = color("textgray"),
      margin = ggplot2::margin(0,0,2,0)
    ),
    plot.caption = ggtext::element_textbox_simple(
      size = size_caption,
      color = color("black"),
      halign = 1,
      lineheight = 1,
      margin = ggplot2::margin(2,0,0,0)
    ),
    strip.background = ggplot2::element_rect(
      color = color_strip_background,
      fill = fill_strip_background
    ),
    strip.text = ggtext::element_textbox_simple(
      size = size_strip,
      margin = ggplot2::margin(
        t = margin_strip_t,
        r = margin_strip_r,
        b = margin_strip_b,
        l = margin_strip_l
      ),
      padding = ggplot2::margin(4, 4, 2, 4),
      halign = halign_strip_text,
      face = face_strip_text
    ),
    panel.background = ggplot2::element_blank(),
    panel.spacing = ggplot2::unit(panel_spacing, "lines"),
    axis.ticks.y = ggplot2::element_blank(),
    axis.ticks.length.x = ggplot2::unit(length_ticks, "cm"),
    axis.ticks.x = ggplot2::element_line(size = .2, color = color_ticks_x),
    axis.line.y = ggplot2::element_blank(),
    axis.line.x = ggplot2::element_line(size = .2, color = color_line_x),
    axis.title.y = ggtext::element_markdown(
      angle = angle_axis_title_y,
      hjust = vjust_axis_title_y,
      color = color_axis_title,
      size = size_axis_title,
      margin = ggplot2::margin(r = 5)
    ),
    axis.title.x = ggtext::element_markdown(
      margin = ggplot2::margin(t = 5, b = margin_axis_title_x_b),
      color = color_axis_title,
      size = size_axis_title,
      hjust = hjust_axis_title_x
    ),
    axis.text.y = ggtext::element_markdown(
      size = size_axis,
      color = color_text,
      vjust = 0
    ),
    axis.text.x = ggtext::element_markdown(
      size = size_axis,
      color = color_text
    ),
    panel.grid = ggplot2::element_blank(),
    panel.grid.major.y = ggplot2::element_line(
      color = color("linegray"),
      size = size_grid_major_line
    ),
    legend.position = pos_legend,
    legend.background = ggplot2::element_blank(),
    legend.key = ggplot2::element_blank(),
    legend.key.size = ggplot2::unit(1, 'lines'),
    legend.text = ggplot2::element_text(
      size = size_legend,
      family = family,
      color = color("text")
    ),
    legend.title = ggplot2::element_blank(),
    legend.margin = ggplot2::margin(
      t = margin_legend_t,
      r = margin_legend_r,
      b = margin_legend_b,
      l = margin_legend_l
    )
  )
}
