arr <- array(1:24, c(3, 3, 3))
dimnames(arr) <- list(paste("row", c(1:3)), paste("col", c(1:3)), paste("ar", c(1:2))) # nolint
arr
length(arr)
mode(arr)
dimnames(arr)