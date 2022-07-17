#' Get a fail message
#'
#' @param message default message for wrong answers
#'
#' @return a message
#' @export
#'
.fail <- function(message = "Wrong. Please try again") {
  .autograder_value <<- 0
  .autograder_message <<- message
  rlang::eval_bare(rlang::expr(return()), env = parent.frame())
}
