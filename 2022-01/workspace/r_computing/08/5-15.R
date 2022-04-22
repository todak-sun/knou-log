f <- function(x) {
  v <- 2
  g <- function(y) {
    return((u + v + y)^2)
  }
  gu <- g(u)
  print(gu)
}

u <- 5
f()