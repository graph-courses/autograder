
<!-- README.md is generated from README.Rmd. Please edit that file -->

# autograder

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/autograder)](https://CRAN.R-project.org/package=autograder)
[![pipeline
status](https://renkulab.io/gitlab/the-graph-courses/autograder/badges/master/pipeline.svg)](https://renkulab.io/gitlab/the-graph-courses/autograder/-/commits/master)
[![coverage
report](https://renkulab.io/gitlab/the-graph-courses/autograder/badges/master/coverage.svg)](https://renkulab.io/gitlab/the-graph-courses/autograder/-/commits/master)
<!-- badges: end -->

The goal of autograder is to …

## Installation

You can install the development version of autograder like so:

``` r
remotes::install_git(url = "https://renkulab.io/gitlab/the-graph-courses/autograder.git")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(autograder)
## basic example code
```

### score\_grid

``` r
.scores <- rep(-1, times = 3)   # Put total number of questions as `times` argument
.score_grid()
#> 
#>   1   2   3
```

<!-- ----- -->
<!-- # autograder -->
<!-- Package to house autograders for The GRAPH Courses -->
<!-- ## Introduction -->
<!-- This is a Renku project - basically a git repository with some -->
<!-- bells and whistles. You'll find we have already created some -->
<!-- useful things like `data` and `notebooks` directories and -->
<!-- a `Dockerfile`. -->
<!-- ## Working with the project -->
<!-- The simplest way to start your project is right from the Renku -->
<!-- platform - just click on the `Environments` tab and start a new session. -->
<!-- This will start an interactive environment right in your browser. -->
<!-- To work with the project anywhere outside the Renku platform, -->
<!-- click the `Settings` tab where you will find the -->
<!-- git repo URLs - use `git` to clone the project on whichever machine you want. -->
<!-- ### Changing interactive environment dependencies -->
<!-- Initially we install a very minimal set of packages to keep the images small. -->
<!-- However, you can add python and conda packages in `requirements.txt` and -->
<!-- `environment.yml`, and R packages to `install.R` (listed as, for example, -->
<!-- `install.packages("ggplot2")`), to your heart's content. If you need more fine-grained -->
<!-- control over your environment, please see [the documentation](https://renku.readthedocs.io/en/latest/user/advanced_interfaces.html#dockerfile-modifications). -->
<!-- ## Project configuration -->
<!-- Project options can be found in `.renku/renku.ini`. In this -->
<!-- project there is currently only one option, which specifies -->
<!-- the default type of environment to open, in this case `/rstudio`. -->
<!-- ## Moving forward -->
<!-- Once you feel at home with your project, we recommend that you replace -->
<!-- this README file with your own project documentation! Happy data wrangling! -->
