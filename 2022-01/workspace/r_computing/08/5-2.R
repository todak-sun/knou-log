rm(list = ls())


d.mean <- function(data) {
  sum(data) / length(data)
}

x <- rnorm(100, mean = 3, sd = 1.5)
d.mean(x)
# [1] 3.078776

x <- rnorm(1000, mean = 3, sd = 1.5)
d.mean(x)
# [1] 2.99586

x <- rnorm(10000, mean = 3, sd = 1.5)
d.mean(x)
# [1] 3.026535