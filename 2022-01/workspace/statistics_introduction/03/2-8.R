rm(list = ls())

set.seed(2021)

rn <- c(rnorm(100, 5, 2), rnorm(100, 10, 2))

hist(rn)
hist(rn, breaks = 20, main = "", xlab = "value")
hist(rn, breaks = 5, main = "", xlab = "value")

