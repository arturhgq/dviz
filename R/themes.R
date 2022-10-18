#' @title ggplot2 minimal facet theme
#' @export
theme_facet = function(
    family = "",
    size = 12,
    size_title = 12,
    size_subtitle = 10,
    size_caption = 10
) {
  ggplot2::theme(
    text = ggplot2::element_text(
      size = size,
      color = "grey30",
      lineheight = 1,
      family = family
    ),
    plot.title.position = "plot",
    plot.caption.position = "plot",
    plot.title = ggplot2::element_text(
      size = size_title,
      color = "black",
      face = "bold",
      margin = ggplot2::margin(0,0,2,0)
    ),
    plot.subtitle = ggplot2::element_text(
      size = size_subtitle,
      color = "grey30"
    ),
    plot.caption = ggplot2::element_text(
      size = size_caption,
      color = "black"
    ),
    panel.background = ggplot2::element_blank(),
    axis.ticks = ggplot2::element_blank(),
    panel.grid = ggplot2::element_blank(),
    panel.grid.major.y = ggplot2::element_line(
      color = "grey92"
    ),
    legend.position = "top"
  )
}
