rm(list = ls())

arr1 <- array(1:8, dim = c(2, 2, 2))
arr2 <- array(8:1, dim = c(2, 2, 2))

arr1
arr2

arr1 * arr2

arr1 %*% arr2

sum(arr1 * arr2)

arr1[1, 1, ]
arr1[1, , -2]