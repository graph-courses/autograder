#' Print complete scores!
#'
#' @details
#'
#' ```{asciicast cli-print}
#' .scores <- rep(-1, times = 3)   # Put total number of questions as `times` argument
#' .score_print()
#' ```
#'
#' @return final scores
#' @export
.score_print <- function(){
  num_questions <- length(.scores)
  num_correct <- sum(.scores == 1)
  num_answered <- sum(.scores != -1)
  score_pct <- ifelse(num_answered == 0,
                      NA,
                      round(100 * num_correct/num_questions, digits = 3) )

  .score_grid()
  cat("\n")
  cli::cli_text("{cli::symbol$checkbox_off} {cli::style_bold('Answered:')} {num_answered} of {num_questions}")
  cli::cli_text("{cli::bg_cyan(cli::col_white(paste0( cli::symbol$tick ) ))} {cli::style_bold('Correct:')} {num_correct} of {num_questions}")
  cli::cli_text("{cli::col_magenta(paste0( cli::symbol$arrow_right ) )} {cli::style_bold('Score so far:')} {score_pct} %")

  if (!is.na(score_pct) && score_pct >= 90){
    cat(praise::praise("${Exclamation}! ${EXCLAMATION}!-${EXCLAMATION}! This is ${adverb} ${adjective}!\n"))
    cli::ansi_with_hidden_cursor(.spinner_function())
  }

}
