# trcpalette

The `trcpalette` package provides a collection of custom colour palettes designed for visualizing data with `ggplot2`. It includes both discrete and continuous palettes, as well as easy-to-use `ggplot2` scale functions for applying these palettes in your plots.

## Installation

```r
# Install the latest version from GitHub
devtools::install_github("TamakiRegen/palette")
```

## Colour Palettes

The package includes several colour palettes that can be used in your plots or other applications.

### Main Colours

The `trc_main_colours()` function returns the core set of TRC colours:

```r
trc_main_colours(reverse = FALSE)
```

- **reverse:** Set to `TRUE` to reverse the order of the colours.

### Shades
There are functions to provide seven shades each of blue, red, teal, purple and orange. 
`trc_blues()`  `trc_teals()` `trc_reds()` `trc_purples()`  `trc_oranges()` 

- **reverse:** Set to `TRUE` to reverse the order of the colors.

### Extended TRC Palette

The `trc_main_extended()` function returns an extended version of the main TRC colors, and four iterations of progressively lighter shades, for a total of 20 colour values.

```r
trc_main_extended(reverse = FALSE)
```

- **reverse:** Set to `TRUE` to reverse the order of the colours.

### List of TRC Colors

The `list_trc_colours()` function provides the hex values and names of each of the main TRC colours:

```r
list_trc_colours()
```

This function outputs a named list of hex color values, making it easy to see which colours correspond to each name. This is useful if you want to select specific main colours for a plot, without calling specific palettes.

## ggplot2 Integration

The package provides several `ggplot2` scale functions to easily apply the TRC palettes to your plots.

### Continuous Scales

#### Continuous Fill Scale

Use `scale_fill_trc_continuous()` to apply a continuous TRC colour palette to the `fill` aesthetic in `ggplot2`:

```r
scale_fill_trc_continuous(palette = trc_main_colours, reverse = FALSE)
```

#### Continuous Colour Scale

Use `scale_colour_trc_continuous()` to apply a continuous TRC colour palette to the `colour` aesthetic in `ggplot2`:

```r
scale_colour_trc_continuous(palette = trc_main_colours, reverse = FALSE)
```

### Examples

#### Example of a Continuous Fill Scale

```r
ggplot(faithful, aes(x = eruptions, y = waiting, fill = eruptions)) +
  geom_tile() +
  scale_fill_trc_continuous()
```

#### Example of a Continuous Colour Scale

```r
ggplot(faithful, aes(x = eruptions, y = waiting, color = eruptions)) +
  geom_point() +
  scale_colour_trc_continuous(palette = trc_blues)
```
## Discrete Colour Scales

### `scale_fill_trc_discrete()`
This function applies a discrete TRC colour palette to the `fill` aesthetic in `ggplot2`. It is designed for use with categorical data.

**Parameters:**
- `palette`: A vector of colour hex values. Defaults to the main TRC colours.
- `reverse`: A logical value indicating whether to reverse the order of the colours. Default is `FALSE`.
- `...`: Additional parameters passed to `ggplot2::discrete_scale()`.

**Example:**
```r
ggplot(data, aes(x = factor_variable, fill = category_variable)) +
  geom_bar() +
  scale_fill_trc_discrete()
```

### scale_color_trc_discrete()
This function applies a discrete TRC color palette to the color aesthetic in ggplot2. It is suitable for use with categorical data.

**Parameters:**
-`palette`: A vector of colour hex values. Defaults to the main TRC colours.
-`reverse`: A logical value indicating whether to reverse the order of the colours. Default is FALSE.
-`...`: Additional parameters passed to ggplot2::discrete_scale().
***Example:***
```r
Copy code
ggplot(data, aes(x = x_variable, y = y_variable, color = category_variable)) +
  geom_point() +
  scale_color_trc_discrete()
```
## License

This package is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
