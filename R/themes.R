#' @title ggplot2 minimal facet theme
#' @param design "minimal" or "xlt"
#' @examples
#' dplyr::starwars |>
#'   tidyr::drop_na(eye_color, height, mass) |>
#'   dplyr::filter(mass < 1200) |>
#'   dplyr::mutate(height = height/100) |>
#'   ggplot2::ggplot() +
#'   ggplot2::facet_wrap(~ eye_color) +
#'   ggplot2::aes(x = mass, y = height, color = "#333333", fill  = "#3399ff") +
#'   ggplot2::geom_point(shape = 21, stroke = 0.3, alpha = .7, size = 3) +
#'   ggplot2::scale_y_continuous(
#'     labels = scales::label_comma(decimal.mark = ",", big.mark = "."),
#'     limits = c(0, 3)
#'   ) +
#'   ggplot2::scale_x_continuous(limits = c(0, 160), breaks = seq(0, 160, 30)) +
#'   ggplot2::scale_color_identity() +
#'   ggplot2::scale_fill_identity() +
#'   ggviz::theme_facet() +
#'   ggplot2::labs(
#'     y = "altura (metros)",
#'     x = "massa (kg)",
#'     title = "Altura e massa dos personagens de Star Wars por cor dos olhos",
#'     subtitle = "Aproximadamente 24% dos personagens tem olhos marrons e 9,2% olhos laranjas.\nO personagem mais alto da franquia é o Yarael Poof, com 2,64 metros.\nJabba, por sua vez, é o mais pesado, com 1.358 quilos.",
#'     caption = "Como o peso do Jabba destoa dos demais, para melhorar a visualização dos dados, optei por excluí-lo.\nDados relativos aos 7 primeiros filmes da franquia."
#'   ) +
#'   ggplot2::coord_cartesian(clip = "off", expand = TRUE)
#' @export
theme_facet = function(
    design = "minimal",
    family = "",
    size = 12,
    size_title = 12,
    size_subtitle = 10,
    size_caption = 10,
    size_strip = 10
) {
theme_facet = ggplot2::theme(
  text = ggplot2::element_text(
    size = size,
    color = color("textgray"),
    lineheight = 1,
    family = family
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
    margin = ggplot2::margin(2,0,0,0)
  ),
  strip.text = ggtext::element_textbox_simple(
    size = size_strip,
    margin = ggplot2::margin(2,0,2,0),
    padding = ggplot2::margin(4, 4, 2, 4),
    halign = .5
  ),
  panel.background = ggplot2::element_blank(),
  axis.text.y = ggplot2::element_text(vjust = 0),
  panel.grid = ggplot2::element_blank(),
  panel.grid.major.y = ggplot2::element_line(
    color = color("linegray")
  ),
  legend.position = "top",
  legend.background = ggplot2::element_blank(),
  legend.key = ggplot2::element_blank()
)

  if (design == "minimal") {
    theme_facet +
      ggplot2::theme(
        axis.ticks = ggplot2::element_blank()
      )
  } else if(design == "xlt") {
    theme_facet +
      ggplot2::theme(
        axis.ticks.y = ggplot2::element_blank(),
        axis.ticks.length.x = ggplot2::unit(.1, "cm"),
        axis.ticks.x = ggplot2::element_line(size = .2, color = color("text")),
        axis.line.y = ggplot2::element_blank(),
        axis.line.x = ggplot2::element_line(size = .2, color = color("text")),
      )
  }
}
