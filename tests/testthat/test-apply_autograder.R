test_that("autograder v1 reprex works", {
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

    # invalid
    q1 <- c(1,1)
    .check_q1()

    # # na not dataframe
    # q1 <- "YOUR ANSWER HERE"
    # .check_q1()
    #
    # # fail mistake
    # q1 <- ncol(iris)
    # .check_q1()
    #
    # # pass correct
    # q1 <- nrow(iris)
    # .check_q1()

  })
})
