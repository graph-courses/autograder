test_that(".score_grid all three wrong answers works", {
  .scores <<- rep(-1, times = 3)
  expect_snapshot({
    .score_grid()
  })
})
