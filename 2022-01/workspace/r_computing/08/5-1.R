rm(list = ls())

u <- 1
v <- 8
g <- function(x) {
  x <- x + 1
  u <- u + x
  return(u)
}
g(v)
u
v