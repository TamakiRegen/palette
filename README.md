# trcpalette

The `trcpalette` package provides a collection of custom color palettes designed for visualizing data with `ggplot2`. It includes both discrete and continuous palettes, as well as easy-to-use `ggplot2` scale functions for applying these palettes in your plots.

## Installation

To install the package, run:

```r
# Install the latest version from GitHub
devtools::install_github("TamakiRegen/palette")
```

## Color Palettes

The package includes several color palettes that can be used in your plots or other applications.

### Main Colors

The `trc_main_colours()` function returns the core set of TRC colors:

```r
trc_main_colours(reverse = FALSE)
```

- **reverse:** Set to `TRUE` to reverse the order of the colors.

### Shades of Blue

The `blue_shades()` function returns a series of shades of blue:

```r
blue_shades(reverse = FALSE)
```

- **reverse:** Set to `TRUE` to reverse the order of the colors.

### Shades of Teal

The `teal_shades()` function returns a series of teal shades:

```r
teal_shades(reverse = FALSE)
```

- **reverse:** Set to `TRUE` to reverse the order of the colors.

### Shades of Red

The `red_shades()` function returns a series of red shades:

```r
red_shades(reverse = FALSE)
```

- **reverse:** Set to `TRUE` to reverse the order of the colors.

### Shades of Purple

The `purple_shades()` function returns a series of purple shades:

```r
purple_shades(reverse = FALSE)
```

- **reverse:** Set to `TRUE` to reverse the order of the colors.

### Shades of Orange

The `orange_shades()` function returns a series of orange shades:

```r
orange_shades(reverse = FALSE)
```

- **reverse:** Set to `TRUE` to reverse the order of the colors.

### Extended TRC Palette

The `trc_main_extended()` function returns an extended version of the main TRC colors, including additional shades of each color:

```r
trc_main_extended(reverse = FALSE)
```

- **reverse:** Set to `TRUE` to reverse the order of the colors.

### List of TRC Colors

The `list_trc_colours()` function provides the hex values and names of each of the main TRC colors:

```r
list_trc_colours()
```

This function outputs a named list of hex color values, making it easy to see which colors correspond to each name.

## ggplot2 Integration

The package provides several `ggplot2` scale functions to easily apply the TRC palettes to your plots.

### Continuous Scales

#### Continuous Fill Scale

Use `scale_fill_trc_continuous()` to apply a continuous TRC color palette to the `fill` aesthetic in `ggplot2`:

```r
scale_fill_trc_continuous(palette = trc_main_colours, reverse = FALSE)
```

#### Continuous Color Scale

Use `scale_color_trc_continuous()` to apply a continuous TRC color palette to the `color` aesthetic in `ggplot2`:

```r
scale_color_trc_continuous(palette = trc_main_colours, reverse = FALSE)
```

### Examples

#### Example of a Continuous Fill Scale

```r
ggplot(faithful, aes(x = eruptions, y = waiting, fill = eruptions)) +
  geom_tile() +
  scale_fill_trc_continuous()
```

#### Example of a Continuous Color Scale

```r
ggplot(faithful, aes(x = eruptions, y = waiting, color = eruptions)) +
  geom_point() +
  scale_color_trc_continuous(palette = blue_shades)
```

## License

This package is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
