rm(list = ls())

x <- c(1, 2, 3, 4)
type <- "var"
switch(type,
  mean = mean(x),
  median = median(x),
  sum = sum(x),
  var = var(x)
)