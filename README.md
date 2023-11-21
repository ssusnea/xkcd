
<!-- README.md is generated from README.Rmd. Please edit that file -->

# xkcd

<!-- badges: start -->
<!-- badges: end -->

The `xkcd` package provides an R interface to retrieve data about [xkcd
comics](https://xkcd.com) from the xkcd website - and most importantly,
view these comics in the plot window!

## Installation

You can install the development version of xkcd from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("ssusnea/xkcd")
```

## Browsing Comics

Given a comic number the `xkcd` function retrieves a JSON object with
metadata about that comic.

``` r
library(xkcd)

first_comic <- xkcd(1)
first_comic
#> $month
#> [1] "1"
#> 
#> $num
#> [1] 1
#> 
#> $link
#> [1] ""
#> 
#> $year
#> [1] "2006"
#> 
#> $news
#> [1] ""
#> 
#> $safe_title
#> [1] "Barrel - Part 1"
#> 
#> $transcript
#> [1] "[[A boy sits in a barrel which is floating in an ocean.]]\nBoy: I wonder where I'll float next?\n[[The barrel drifts into the distance. Nothing else can be seen.]]\n{{Alt: Don't we all.}}"
#> 
#> $alt
#> [1] "Don't we all."
#> 
#> $img
#> [1] "https://imgs.xkcd.com/comics/barrel_cropped_(1).jpg"
#> 
#> $title
#> [1] "Barrel - Part 1"
#> 
#> $day
#> [1] "1"
#> 
#> attr(,"class")
#> [1] "xkcd"
```

The most useful thing you can do with these objects is plot them, which
displays the comic image in the plot window.

``` r
plot(first_comic)
```

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" />
