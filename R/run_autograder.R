#' Run autograder v2
#'
#' @return an autograder output
#' @export
#'
.run_autograder <-  function () {
  tryCatch({.autograder()},
           # if there is an error, return NA score and message.
           error = function(e) {
             .autograder_value <<- -1
             .autograder_message <<- "Invalid answer. Please check your work"})
  .scores[.problem_number] <<- .autograder_value
  cat(.autograder_message)
  .score_grid()
}
