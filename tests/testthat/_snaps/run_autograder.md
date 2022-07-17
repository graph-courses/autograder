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
      q1 <- c(1, 1)
      .check_q1()
    Warning <simpleWarning>
      the condition has length > 1 and only the first element will be used
      the condition has length > 1 and only the first element will be used
    Output
      Wrong. Please try again
       ᐅ 1 ᐊ

