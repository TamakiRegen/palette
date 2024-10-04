#' Main TRC Colors
#'
#' This function provides the main color palette used in TRC visualizations.
#'
#' @param reverse Logical. If TRUE, reverses the order of the colors.
#' @return A character vector of hex color codes representing the main colors.
#' @examples
#' trc_main_colours()      # Default order
#' trc_main_colours(TRUE)  # Reversed order
#' @export
trc_main_colours <- function(reverse = FALSE) {
  colors <- c(
    "#2A7DE2", # blue
    "#15D3C5", # teal
    "#F1636E", # red
    "#60269E", # purple
    "#FF7F30"  # orange
  )
  if (reverse) {
    return(rev(colors))
  }
  return(colors)
}

#' Blue Shades
#'
#' This function provides a range of blue shades used in TRC visualizations.
#'
#' @param reverse Logical. If TRUE, reverses the order of the colors.
#' @return A character vector of hex color codes representing blue shades.
#' @examples
#' trc_blues()      # Default order
#' trc_blues(TRUE)  # Reversed order
#' @export
trc_blues <- function(reverse = FALSE) {
  colors <- c(
    "#7fb1ee", "#6aa4eb", "#5597e8", "#3f8ae5", "#2a7de2",
    "#2671cb", "#2264b5", "#1d589e"
  )
  if (reverse) {
    return(rev(colors))
  }
  return(colors)
}

#' Teal Shades
#'
#' This function provides a range of teal shades used in TRC visualizations.
#'
#' @param reverse Logical. If TRUE, reverses the order of the colors.
#' @return A character vector of hex color codes representing teal shades.
#' @examples
#' trc_teals()      # Default order
#' trc_teals(TRUE)  # Reversed order
#' @export
trc_teals <- function(reverse = FALSE) {
  colors <- c(
    "#73e5dc","#5be0d6", "#44dcd1", "#2cd7cb", "#15d3c5",
    "#13beb1", "#11a99e", "#0f948a"
  )
  if (reverse) {
    return(rev(colors))
  }
  return(colors)
}

#' Red Shades
#'
#' This function provides a range of red shades used in TRC visualizations.
#'
#' @param reverse Logical. If TRUE, reverses the order of the colors.
#' @return A character vector of hex color codes representing red shades.
#' @examples
#' trc_reds()      # Default order
#' trc_reds(TRUE)  # Reversed order
#' @export
trc_reds <- function(reverse = FALSE) {
  colors <- c(
    "#f7a1a8","#f5929a", "#f4828b", "#f2737d", "#f1636e",
    "#d95963", "#c14f58", "#a9454d"
  )
  if (reverse) {
    return(rev(colors))
  }
  return(colors)
}

#' Purple Shades
#'
#' This function provides a range of purple shades used in TRC visualizations.
#'
#' @param reverse Logical. If TRUE, reverses the order of the colors.
#' @return A character vector of hex color codes representing purple shades.
#' @examples
#' trc_purples()      # Default order
#' trc_purples(TRUE)  # Reversed order
#' @export
trc_purples <- function(reverse = FALSE) {
  colors <- c(
    "#a07dc5","#9067bb", "#8051b1", "#703ca8", "#60269e",
    "#56228e", "#4d1e7e", "#431b6f"
  )
  if (reverse) {
    return(rev(colors))
  }
  return(colors)
}

#' TRC Extended Main Colors
#'
#' This function provides an extended color palette based on the main TRC colors.
#'
#' @param reverse Logical. If TRUE, reverses the order of the colors.
#' @return A character vector of hex color codes representing the extended main colors.
#' @examples
#' trc_extended()      # Default order
#' trc_extended(TRUE)  # Reversed order
#' @export
trc_extended <- function(reverse = FALSE) {
  colors <- c(
    "#2a7de2","#15d3c5","#f1636e","#60269e","#ff7f30",
    "#3f8ae5","#2cd7cb","#f2737d","#703ca8","#ff8c45",
    "#5597e8","#44dcd1","#f4828b","#8051b1","#ff9959",
    "#6aa4eb","#5be0d6","#f5929a","#9067bb","#ffa56e",
    "#7fb1ee","#73e5dc","#f7a1a8","#a07dc5","#ffb283"
    )
  if (reverse) {
    return(rev(colors))
  }
  return(colors)
}

#' Orange Shades
#'
#' This function provides a range of orange shades used in TRC visualizations.
#'
#' @param reverse Logical. If TRUE, reverses the order of the colors.
#' @return A character vector of hex color codes representing orange shades.
#' @examples
#' trc_oranges()      # Default order
#' trc_oranges(TRUE)  # Reversed order
#' @export
trc_oranges <- function(reverse = FALSE) {
  colors <- c(
    "#ffb283","#ffa56e", "#ff9959", "#ff8c45", "#ff7f30",
    "#e6722b", "#cc6626", "#b35922"
  )
  if (reverse) {
    return(rev(colors))
  }
  return(colors)
}

#' List Main TRC Colors with Names
#'
#' This function returns a data frame that lists the names of the main TRC colors and their corresponding hex codes.
#'
#' @return A data frame with two columns: `name` (color name) and `hex` (hex code).
#' @examples
#' list_trc_main_colours()
#' @export
list_trc_main_colours <- function() {
  colors <- c(
    "blue" = "#2A7DE2",
    "teal" = "#15D3C5",
    "red" = "#F1636E",
    "purple" = "#60269E",
    "orange" = "#FF7F30"
  )
  # Convert to a data frame
  color_df <- data.frame(
    name = names(colors),
    hex = colors,
    stringsAsFactors = FALSE
  )

  return(color_df)
}

#' Custom ggplot2 Fill Scale Using TRC Colors
#'
#' This function applies the TRC main color palette to ggplot2 fills.
#'
#' @param palette The palette function to use (e.g., trc_main_colours)
#' @param reverse Should the palette be reversed? Default is FALSE.
#' @param ... Additional arguments passed to ggplot2's scale_fill_manual
#' @return A ggplot2 scale object for fills
#' @export
scale_fill_trc <- function(palette = trc_main_colours, reverse = FALSE, ...) {
  ggplot2::scale_fill_manual(values = palette(reverse), ...)
}

#' Custom ggplot2 Color Scale Using TRC Colors
#'
#' This function applies the TRC main color palette to ggplot2 colors.
#'
#' @param palette The palette function to use (e.g., trc_main_colours)
#' @param reverse Should the palette be reversed? Default is FALSE.
#' @param ... Additional arguments passed to ggplot2's scale_color_manual
#' @return A ggplot2 scale object for colors
#' @export
scale_color_trc <- function(palette = trc_main_colours, reverse = FALSE, ...) {
  ggplot2::scale_color_manual(values = palette(reverse), ...)
}

#' Custom ggplot2 Continuous Fill Scale Using TRC Colors
#'
#' This function applies the TRC main color palette to ggplot2 continuous fills.
#'
#' @param palette The palette function to use (e.g., trc_main_colours)
#' @param reverse Should the palette be reversed? Default is FALSE.
#' @param ... Additional arguments passed to ggplot2's scale_fill_gradientn
#' @return A ggplot2 scale object for continuous fills
#' @export
scale_fill_trc_continuous <- function(palette = trc_main_colours, reverse = FALSE, ...) {
  colors <- palette(reverse)
  ggplot2::scale_fill_gradientn(colors = colors, ...)
}

#' Custom ggplot2 Continuous Color Scale Using TRC Colors
#'
#' This function applies the TRC main color palette to ggplot2 continuous colors.
#'
#' @param palette The palette function to use (e.g., trc_main_colours)
#' @param reverse Should the palette be reversed? Default is FALSE.
#' @param ... Additional arguments passed to ggplot2's scale_color_gradientn
#' @return A ggplot2 scale object for continuous colors
#' @export
scale_color_trc_continuous <- function(palette = trc_main_colours, reverse = FALSE, ...) {
  colors <- palette(reverse)
  ggplot2::scale_color_gradientn(colors = colors, ...)
}
