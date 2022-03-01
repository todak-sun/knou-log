rm(list = ls())

x <- 0

for (i in 1:10) {
  x <- x + i
  if (x > 25) {
    break
  }
  print(x)
}