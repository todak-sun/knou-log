rm(list = ls())

x <- c(1, 2, 3, 4)

switch(1,
  mean(x),
  sum(x),
  var(x)
)