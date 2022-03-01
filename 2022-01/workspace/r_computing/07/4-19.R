rm(list = ls())

i <- 1
x <- 0

while (i < 10) {
  i <- i + 1
  if (i < 8) {
    next
  }
  print(i)
  x <- x + i
}