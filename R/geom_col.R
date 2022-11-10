#' @title plot col wrap
#' @examples
#' ggplot2::presidential |>
#' dplyr::mutate(
#'   days = as.numeric(end - start) + 1
#' ) -> data
#'
#' plot_col_wrap(
#'   data,
#'   mapping = ggplot2::aes(x = name, y = days),
#'   width = .8,
#'   group = c(party),
#'   linewidth = .1,
#'   fill = "gray"
#' )
#' @export
plot_col_wrap = function(
    data = NULL,
    mapping = NULL,
    stat = "identity",
    position = "dodge",
    key_glyph = NULL,
    width = NULL,
    na.rm = FALSE,
    show.legend = NA,
    inherit.aes = TRUE,
    group,
    lab_y,
    ...) {

  group_args = as.list(
    do.call("substitute", alist(group))[-1]
  )
  group_data = do.call(
    dtools::split_group,
    c(list(data), group_args)
  )
  params = c(
    width = width,
    na.rm = na.rm,
    list(...)
  )

  purrr::imap(
    .x = group_data,
    ~ {
      call_args = list(
        ggplot2 = ggplot2::ggplot(),
        layer =  ggplot2::layer(
          mapping = mapping,
          data = .x,
          stat = stat,
          geom = ggplot2::GeomCol,
          position = position,
          show.legend = show.legend,
          inherit.aes = inherit.aes,
          key_glyph = key_glyph,
          params = params
        ),
        labs = ggplot2::labs(title = .y)
      )
      purrr::reduce(call_args, `+`)
    }
  )
}





