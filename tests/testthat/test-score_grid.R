test_that(".score_grid all three wrong answers works", {
  expect_snapshot(local({
    .scores <- rep(-1, times = 3)
    .score_grid()
  }))
})

test_that(".score_grid all three correct answers works", {
  expect_snapshot(local({
    .scores <- rep(1, times = 3)
    .score_grid()
  }))
})
