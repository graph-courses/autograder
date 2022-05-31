#' Generate a correct message
#'
#' @param message write a message different from default
#'
#' @return generate a message
#' @export
#'
.pass <- function(message = paste0("Correct! ", praise::praise())) {
  .autograder_value <<- 1
  .autograder_message <<- message
  rlang::eval_bare(rlang::expr(return()), env = parent.frame())
}
