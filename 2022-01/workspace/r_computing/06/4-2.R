rm(list = ls())

2^3

A <- matrix(c(1, 2, 3, 4), ncol = 2)
A
B <- matrix(c(2, 2, 2, 2), ncol = 2)
B
A^B

########################################

x <- 3
y <- 2

x %/% y # 1. only devidor.

A <- matrix(c(1, 2, 3, 4), ncol = 2)
A
B <- matrix(c(3, 4, 5, 6), ncol = 2)
B

B %/% A
A %/% B

########################################

A <- matrix(c(5, 10, 2, 1), ncol = 2)
A
B <- matrix(c(3, 4, 5, 6), ncol = 2)
B

A %*% B