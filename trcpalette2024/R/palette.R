# Main colors
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

# Blue shades
blue_shades <- function(reverse = FALSE) {
  colors <- c(
    "#6aa4eb", "#5597e8", "#3f8ae5", "#2a7de2",
    "#2671cb", "#2264b5", "#1d589e"
  )
  if (reverse) {
    return(rev(colors))
  }
  return(colors)
}

# Teal shades
teal_shades <- function(reverse = FALSE) {
  colors <- c(
    "#5be0d6", "#44dcd1", "#2cd7cb", "#15d3c5",
    "#13beb1", "#11a99e", "#0f948a"
  )
  if (reverse) {
    return(rev(colors))
  }
  return(colors)
}

# Red shades
red_shades <- function(reverse = FALSE) {
  colors <- c(
    "#f5929a", "#f4828b", "#f2737d", "#f1636e",
    "#d95963", "#c14f58", "#a9454d"
  )
  if (reverse) {
    return(rev(colors))
  }
  return(colors)
}

# Purple shades
purple_shades <- function(reverse = FALSE) {
  colors <- c(
    "#9067bb", "#8051b1", "#703ca8", "#60269e",
    "#56228e", "#4d1e7e", "#431b6f"
  )
  if (reverse) {
    return(rev(colors))
  }
  
  # Extended main colors
  trc_main_extended <- function(reverse = FALSE) {
    colors <- c(
      "#3f8ae5", "#2a7de2", "#2671cb",  # blue shades
      "#2cd7cb", "#15d3c5", "#13beb1",  # teal shades
      "#f2737d", "#f1636e", "#d95963",  # red shades
      "#703ca8", "#60269e", "#56228e",  # purple shades
      "#ff8c45", "#ff7f30", "#e6722b"   # orange shades
    )
    if (reverse) {
      return(rev(colors))
    }
    return(colors)
  }
  
  return(colors)
}

# Orange shades
orange_shades <- function(reverse = FALSE) {
  colors <- c(
    "#ffa56e", "#ff9959", "#ff8c45", "#ff7f30",
    "#e6722b", "#cc6626", "#b35922"
  )
  if (reverse) {
    return(rev(colors))
  }
  return(colors)
}
