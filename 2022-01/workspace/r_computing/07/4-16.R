rm(list = ls())

i <- 1
x <- 0

repeat {
  if (i > 10) break
  x <- x + i
  i <- i + 1
}

print(x)