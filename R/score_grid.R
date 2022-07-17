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

  # 2022-07-17 update added the symbol '➤' to indicate which number was most recently answered

  for (i in (1:length(.scores))) {
    # NA
    if (.scores[i] == -1) {
      if (i == .problem_number)
        score_icons[i] <- cli::bg_black(cli::style_bold(cli::col_white(paste0(intToUtf8(0x5125), i, intToUtf8(0x5130)))))
      else
        score_icons[i] <- cli::bg_black(cli::style_bold(cli::col_white(paste0(" ", i, " "))))
    }
    # WRONG
    else if (.scores[i] == 0) {
      if (i == .problem_number)
        score_icons[i] <- cli::bg_red(cli::style_bold(cli::col_white(paste0(intToUtf8(0x5125), i, intToUtf8(0x5130)))))
      else
        score_icons[i] <- cli::bg_red(cli::style_bold(cli::col_white(paste0(" ", i, " "))))
    }
    # CORRECT
    else if (.scores[i] == 1) {
      if (i == .problem_number)
        score_icons[i] <- cli::bg_cyan(cli::style_bold(cli::col_white(paste0(intToUtf8(0x5125), i, intToUtf8(0x5130)))))
      else
        score_icons[i] <- cli::bg_cyan(cli::style_bold(cli::col_white(paste0(" ", i, " "))))
    }
  }
  cat("\n", paste(score_icons), sep = " ")
}
