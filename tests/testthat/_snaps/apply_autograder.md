# autograder v1 reprex works

    Code
      .check_q1 <- (function() {
        .problem_number <<- 1
        .autograder <<- (function() {
          if (is.character(q1)) return(c(value = -1, message = "Enter a raw number."))
          if (q1 == ncol(iris)) return(c(value = 0, message = "Calculating number of cols"))
          if (q1 == nrow(iris)) return(c(value = 1, message = paste("Correct!",
            praise::praise())))
          return(c(value = 0, message = "Wrong. Please try again."))
        })
        .apply_autograder()
      })
      q1 <- c(1, 1)
      .check_q1()
    Warning <simpleWarning>
      the condition has length > 1 and only the first element will be used
      the condition has length > 1 and only the first element will be used
      the condition has length > 1 and only the first element will be used
      the condition has length > 1 and only the first element will be used
    Output
      Wrong. Please try again.
       ᐅ 1 ᐊ

