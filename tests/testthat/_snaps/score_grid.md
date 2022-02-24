# .score_grid all three wrong answers works

    Code
      local({
        .scores <- rep(-1, times = 3)
        .score_grid()
      })
    Output
      
        1   2   3 

# .score_grid all three correct answers works

    Code
      local({
        .scores <- rep(1, times = 3)
        .score_grid()
      })
    Output
      
        1   2   3 

