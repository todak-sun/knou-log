rm(list = ls())

a <- 1:10
b <- 11:15

klist <- list(vec1 = a, vec2 = b, descrip = "example")

length(klist)
mode(klist)
names(klist)
klist

nlist <- list(a, b, "example")
nlist

nlist[[2]]
nlist[[2]][1]
klist$vec1