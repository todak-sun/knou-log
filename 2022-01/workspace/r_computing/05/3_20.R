list1 <- list("A", 1:8)
list1

list1[[3]] <- list(c(T, F))
list1[[2]][9] <- 9

list1

list1[3] <- NULL
list1

list1[[2]] <- list1[[2]][-9]
list1

