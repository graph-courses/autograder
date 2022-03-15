test_that("print null score works", {
  .scores <<- rep(-1, times = 1)
  expect_snapshot({
    .check_q1 <-
      function() {
        .problem_number <<- 1
        .autograder <<-
          function(){
            if (is.character(q1)) return(c(value = -1, message = "Enter a raw number."))
            if (q1 == ncol(iris)) return(c(value = 0, message = "Calculating number of cols"))
            if (q1 == nrow(iris)) return(c(value = 1, message = paste("Correct!", praise::praise()) ))
            return(c(value = 0, message = "Wrong. Please try again."))
          }
        .apply_autograder()
      }
    q1 <- ncol(iris)
    .check_q1()
  })
})
