rm(list = ls())

x <- c(1, 2, 3, 4)
y <- c(2, 1, 4, 5)

if (length(x) == 5) {
  if (sum(x) == 10) {
    print("length = 5, sum = 10")
  }
} else {
  print("length = 4, sum = 10")
}

if (length(x) == 4) {
  if (sum(x) == 10) {
    print("length = 4, sum = 10")
  } else {
    print("length = 5, sum = 10")
  }
}