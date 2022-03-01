rm(list = ls())

x <- c(1, 2, 3, 4)
y <- c(2, 1, 4, 5)

if (sum(x) < sum(y)) {
  print(x)
}

if (sum(x) < sum(y)) {
  print(mean(x))
  print(var(x))
}