#' @title ggplot2 theme basic
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
    strip_margin_t = 2,
    strip_margin_r = 0,
    strip_margin_b = 2,
    strip_margin_l = 0,
    plot_margin_t = 5,
    plot_margin_r = 5,
    plot_margin_b = 5,
    plot_margin_l = 5,
    color_text = "gray30",
    color_axis_title = "gray30",
    hjust_axis_title_x= .5,
    vjust_axis_title_y = .5,
    angle_axis_title_y = 90
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
      t = plot_margin_t,
      r = plot_margin_r,
      b = plot_margin_b,
      l = plot_margin_l
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
    strip.text = ggtext::element_textbox_simple(
      size = size_strip,
      margin = ggplot2::margin(
        t = strip_margin_t,
        r = strip_margin_r,
        b = strip_margin_b,
        l = strip_margin_l
      ),
      padding = ggplot2::margin(4, 4, 2, 4),
      halign = .5
    ),
    panel.background = ggplot2::element_blank(),
    axis.ticks = ggplot2::element_blank(),
    axis.title.y = ggtext::element_markdown(
      angle = angle_axis_title_y,
      hjust = vjust_axis_title_y,
      color = color_axis_title,
      size = size_axis_title,
      margin = ggplot2::margin(r = 5)
    ),
    axis.title.x = ggtext::element_markdown(
      margin = ggplot2::margin(t = 5, b = 5),
      color = color_axis_title,
      size = size_axis_title,
      hjust = hjust_axis_title_x
    ),
    axis.text.y = ggplot2::element_text(
      size = size_axis,
      color = color_text,
      vjust = 0
    ),
    axis.text.x = ggplot2::element_text(
      size = size_axis,
      color = color_text
    ),
    panel.grid = ggplot2::element_blank(),
    panel.grid.major.y = ggplot2::element_line(
      color = color("linegray")
    ),
    legend.position = "top",
    legend.background = ggplot2::element_blank(),
    legend.key = ggplot2::element_blank()
  )
}
