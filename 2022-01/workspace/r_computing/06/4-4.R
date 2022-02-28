rm(list = ls())

x <- c(1, 2, 5)
y <- c(5, 1, 7, 8)
union(x, y)
intersect(x, y)
setdiff(x, y)
setdiff(y, x)
setequal(x, y)
setequal(x, c(1, 5))
setequal(x, c(1, 2, 5))
5 %in% x
5 %in% y
choose(5, 2) # 5C2