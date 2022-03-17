
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

The goal of `autograder` is to house autograder functions for The GRAPH
Courses.

## Installation

You can install the development version of autograder like so:

``` r
if(!require("remotes")) install.packages("remotes")
remotes::install_git(url = "https://renkulab.io/gitlab/the-graph-courses/autograder.git")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(autograder)
```

First, create a `.scores` object to set the *total number of questions*
in one lesson.

For this, use the `rep()` function to set this as the number of `times`
to repeat the value `-1` (why? go to *extra details*).

-   For `1` question: `.scores <- rep(-1, times = 1)`
-   For `2` questions: `.scores <- rep(-1, times = 2)`
-   For `n` questions: `.scores <- rep(-1, times = n)`

``` r
# one question
.scores <- rep(-1, times = 1)
```

Second, write a `check_q*()` function:

``` r
.check_q1 <-
  function() {
    
    # set number 
    .problem_number <<- 1
    
    .autograder <<- 
      function(){
        
        # if initial message "your answer here" is not changed
        if (is.character(q1)) return(c(value = -1, message = "Enter a raw number."))
        
        # excelent to highlight common mistakes
        if (q1 == ncol(iris)) return(c(value = 0, message = "This calculates the number of columns."))
        
        # correct answer
        if (q1 == nrow(iris)) return(c(value = 1, message = paste("Correct!", praise::praise()) ))
        
        # if any other unexpected input is assigned
        return(c(value = 0, message = "Wrong. Please try again."))
      }
    .apply_autograder()
  }
```

Third, use the `check_q*()` function to evaluate all the scenarios
detailed inside it:

``` r
q1 <- "YOUR ANSWER HERE"
.check_q1()
#> Enter a raw number.
#>   1

q1 <- iris
.check_q1()
#> Wrong. Please try again.
#>   1

q1 <- ncol(iris)
.check_q1()
#> This calculates the number of columns.
#>   1

q1 <- nrow(iris)
.check_q1()
#> Correct! You are riveting!
#>   1
```

Lastly, use the `.score_print()` function to print the final scores:

``` r
.score_print()
#> 
#>   1
#> [ ] Answered: 1 of 1
#> v Correct: 1 of 1
#> > Score so far: 100 %
#> Aww! HUH!-GEE! This is healthily finest!
```

## Extra details

### Scoring logic

Current logic:

-   `-1` \~ NA
-   `0` \~ wrong
-   `1` \~ correct

This logic is open to additional categories, for example, `.5` \~ half
score.

Given this logic, in the `.scores` object we set `-1` as a default
value.

### Snippets

Quickly generate a template for a `check_q*()` function:

<!-- ![Use the check snippet. GIF captured with LICEcap.](man/figures/demo_autograder_01.gif) -->
<!-- last knitr update https://stackoverflow.com/a/70665396/6702544 -->

<div class="figure" style="text-align: center">

<img src="man/figures/demo_autograder_01.gif" alt="Caption: Use the check snippet. GIF captured with LICEcap." width="100%" />
<p class="caption">
Caption: Use the check snippet. GIF captured with LICEcap.
</p>

</div>

For more details about snippets visit this [blog post full of
gifs](https://appsilon.com/rstudio-shortcuts-and-tips/) or this [rstudio
article](https://support.rstudio.com/hc/en-us/articles/204463668-Code-Snippets-in-the-RStudio-IDE).

To add this snippet in your own Rstudio

-   First, go to *Tools -&gt; Global Options -&gt; Code -&gt; Snippets
    -&gt; Edit Snippets*,
-   Then, paste this text at the bottom of all the default snippets:

``` r
snippet check
    .check_q${1:number} <-
      function() {
        .problem_number <<- ${1:number}
        .autograder <<-
          function(){
            if (${2:test_null}) return(c(value = -1, message = "${3:string_null}"))
            if (${4:test_mistake}) return(c(value = 0, message = "${5:string_mistake}"))
            if (${6:test_correct}) return(c(value = 1, message = paste("Correct!", praise::praise()) ))
            return(c(value = 0, message = "Wrong. Please try again."))
          }
        .apply_autograder()
      }
```

### Internal functions

Create a grid with the score of each question:

``` r
.score_grid()
#> 
#>   1
```

Create a heart spinner:

``` r
.spinner_function()
```

<!-- 

if linux then cli examples on readme like 

ref
https://github.com/r-lib/asciicast#limitations

---
title: autograde
output:
  md_document:
    variant: markdown_github
always_allow_html: yes
---

` ``{r, include = FALSE, cache = FALSE}
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.path = "man/figures/README-",
  out.width = "100%",
  cache = TRUE
)
Sys.setenv(CLI_TICK_TIME = "100")
# Turn on ANSI colors
options(cli.num_colors = 256L)
asciicast::init_knitr_engine(
    startup = quote({
        library(cli)
        set.seed(1) }),
    echo = TRUE, 
    same_process = FALSE,
    echo_input = FALSE,
    options = list(
        asciicast_end_wait = 3
    )
)
` ``


` ``{asciicast cli-score}
.scores <- rep(-1, times = 3)   # Put total number of questions as `times` argument
.score_grid()
` ``

-->
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
