#' Assing value to score
#'
#' @details
#'
#' ```{asciicast cli-appauto}
#' .scores <- rep(-1, times = 1)
#' .check_q1 <-
#'   function() {
#'     .problem_number <<- 1
#'     .autograder <<-
#'       function(){
#'         if (is.character(q1)) return(c(value = -1, message = "Enter a raw number."))
#'         if (q1 == ncol(iris)) return(c(value = 0, message = "Calculating number of cols"))
#'         if (q1 == nrow(iris)) return(c(value = 1, message = paste("Correct!", praise::praise()) ))
#'      return(c(value = 0, message = "Wrong. Please try again."))
#'    }
#'  .apply_autograder()
#' }
#' q1 <- "YOUR ANSWER HERE"
#' .check_q1()
#' q1 <- ncol(iris)
#' .check_q1()
#' q1 <- nrow(iris)
#' .check_q1()
#' .score_print()
#' ```
#'
#' @return internal for each check function
#' @export
.apply_autograder <-
  function(){
    ## assign Correct (1), Incorrect (0) or NA (-1) value to
    ## the appropriate position in .scores vector, or
    ## default (-1) in case of error
    .scores[.problem_number] <<- tryCatch({.autograder()[["value"]]}, error = function(e)-1)
    ## print .autograder message or default message in case of error
    tryCatch({cat(.autograder()[["message"]])}, error = function(e) cat("Wrong. Please try again."))
    .score_grid()
  }
