# pass works

    Code
      .check_q1 <- (function() {
        .problem_number <<- 1
        .autograder <<- (function() {
          if (is.character(q1)) .na(message = "Your answer should be a data frame.")
          if (q1 == ncol(iris)) .fail()
          if (q1 == nrow(iris)) .pass(message = "just correct!") else .fail()
        })
        .run_autograder()
      })
      q1 <- nrow(iris)
      .check_q1()
    Output
      just correct!
        1 

