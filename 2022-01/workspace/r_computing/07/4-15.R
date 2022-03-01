rm(list = ls())

i <- 0

repeat {
  if (i > 5) break
  print(rep(i, i))
  i <- i + 1
}