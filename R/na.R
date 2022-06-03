#' Get a invalid message
#'
#' @param message default message for invalid answers
#'
#' @return a message
#' @export
#'
.na <- function(message = "Invalid answer. Please check your work.") {
  .autograder_value <<- -1
  .autograder_message <<- message
  rlang::eval_bare(rlang::expr(return()), env = parent.frame())
}
