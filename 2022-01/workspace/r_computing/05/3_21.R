rm(list = ls())

a <- 1:10
b <- 11:15
nlist <- list(vec1 = a, vec2 = b, descrip = "example")
nlist

nlist[[2]][5]

nlist$vec2[c(2, 3)]