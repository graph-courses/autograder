#' Generate heart spinners
#'
#' @return a spinner
#' @export
#'
#' @examples
#' .spinner_function()
.spinner_function <- function() {
  .spinner <- cli::make_spinner("hearts")
  purrr::map(1:20, function(x) { .spinner$spin(); Sys.sleep(0.05) })
  .spinner$finish()
}
