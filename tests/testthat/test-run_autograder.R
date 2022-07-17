test_that("autograder v2 reprex works", {

  .scores <<- rep(-1, times = 1)

  expect_snapshot({

    .check_q1 <-
      function() {
        .problem_number <<- 1
        .autograder <<-
          function(){
            if (is.character(q1)) .na(message = "Your answer should be a data frame.")
            if (q1 == ncol(iris)) .fail()
            if (q1 == nrow(iris)) .pass()
            else .fail()
          }
        .run_autograder()
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
