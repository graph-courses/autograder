test_that("multiplication works", {
  .scores <<- rep(-1, times = 3)
  expect_snapshot({
    .score_print
  })
})
