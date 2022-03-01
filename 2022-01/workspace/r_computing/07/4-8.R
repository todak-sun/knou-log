rm(list = ls())

x <- c(1, 2, 3, 4)
y <- c(2, 1, 4, 5)
ifelse(x < y, x, y)

ifelse(sum(x - y) > 0,
  "positive",
  ifelse(sum(x - y) < 0,
    "negative",
    "zero"
  )
)