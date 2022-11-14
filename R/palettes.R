#' List of palettes inspired by JWST images

jwst_palettes <- list(
  tarantula1 = c("#77271a", "#832d1d", "#8b3729", "#9d4531", "#a94f31", "#af5730", "#b36131", "#b76b2e", "#be6f2f"),
  tarantula2 = c("#0f161c", "#23282f","#3f4750", "#7a747a", "#8b7c84", "#9fa4b8", "#a2b8d4", "#b4d3ee", "#d3e8fb", "#e6f4ff"),
  tarantula3 = c("#832f22", "#b94924", "#d89c6d", "#deb597", "#ecccc6", "#f7f1ee", "#d3e8fb", "#99b9d8", "#35588c", "#1e2741"),
  dustring = c("#0c101a", "#aa8092", "#8b5b75", "#6f4e67", "#322941", "#63659e", "#8184b8", "#484a45"),
  neptune = c("#bdbec7", "#eef1ed", "#5c465b", "#bdb1c3", "#69677d", "#c7b99a", "#e3dcc7", "#946c84"),
  dimorphos = c("#301410", "#521f17", "#6e291e", "#9a3623", "#bf4330", "#d86e5b", "#ecb5ad", "#fcf3f4"),
  carina = c("#482d1f", "#9784d5", "#be7479", "#e8e2e8", "#bb8c6b", "#5f9fc3", "#aaa0ad", "#285284")
)

#' @export

#' Palettes inspired by images from NASA's James Webb Space Telescope
#'
#' @param n Number of colors to use.
#' If omitted, uses all colours.
#' @param name Palette name. Choices are:
#'   \code{tarantula1}, \code{tarantula2},  \code{tarantula3},
#'   \code{carina}, \code{neptune},  \code{dimorphos}, \code{dustring}
#' @param type Type of palette, ie. "continuous" or "discrete". Continuous will automatically interpolate between the given colours to complete the palette.
#' @importFrom graphics rgb rect par image text
#' @return A vector of colours.
#' @export
#' @keywords colors
#' @examples
#' jwst_palette("neptune")
#' jwst_palette("carina", 3)
#'

jwst_palette <- function(name, n, type = c("discrete", "continuous")) {

  type <- match.arg(type)

  pal <- jwst_palettes[[name]]

  if (is.null(pal))
    stop("Palette not found.")

  if (missing(n)) {
    n <- length(pal)
  }

  if (type == "discrete" && n > length(pal)) {
    stop("Number of requested colors exceeds number of colors in the specified palette.")
  }

  out <- switch(type,
                continuous = grDevices::colorRampPalette(pal)(n),
                discrete = pal[1:n]
  )

  structure(out, class = "palette", name = name)

}

#' @export
#' @importFrom grDevices rgb
