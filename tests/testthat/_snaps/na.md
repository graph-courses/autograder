# autograder v2 reprex works

    Code
      .check_q1 <- (function() {
        .problem_number <<- 1
        .autograder <<- (function() {
          if (is.character(q1)) .na(message = "Your answer should be a data frame.")
          if (q1 == ncol(iris)) .fail()
          if (q1 == nrow(iris)) .pass() else .fail()
        })
        .run_autograder()
      })
      q1 <- "YOUR ANSWER HERE"
      .check_q1()
    Output
      Your answer should be a data frame.
       ᐅ 1 ᐊ

