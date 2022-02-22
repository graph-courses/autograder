#' Create a grid with the score of each question
#'
#' @details
#'
#' ```{asciicast cli-cli}
#' .scores <- rep(-1, times = 3)   # Put total number of questions as `times` argument
#' .score_grid()
#' ```
#'
#' @return a grid number and color-coded scores
#' @export

.score_grid <- function(){
  score_icons <- list()
  # current logic:
  # -1 ~ NA
  #  0 ~ wrong
  #  1 ~ correct
  # open to additional categories
  # .5 ~ half score
  for (i in (1:length(.scores))) {
    if(.scores[i] == -1 ) {
      score_icons[i] <- cli::bg_black(cli::style_bold(cli::col_white(paste0(" ", i, " "))))
    } else if (.scores[i] == 0)  {
      score_icons[i] <- cli::bg_red(cli::style_bold(cli::col_white(paste0(" ", i, " "))))
    } else if (.scores[i] == 1) {
      score_icons[i] <- cli::bg_cyan(cli::style_bold(cli::col_white(paste0(" ", i, " "))))
    }
  }
  cat("\n", paste(score_icons), sep = " ")
}
