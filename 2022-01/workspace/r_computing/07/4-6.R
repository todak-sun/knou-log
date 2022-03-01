rm(list = ls())

x <- c(1, 2, 3, 4)
y <- c(2, 1, 4, 5)

if (mean(x) > mean(y)) {
  print("Mean(x) > Mean(y)")
} else {
  print("Mean(x) < Mean(y)")
}

if (mean(x) > mean(y)) {
  print(mean(x))
  print(var(x))
} else {
  print(mean(y))
  print(var(y))
}