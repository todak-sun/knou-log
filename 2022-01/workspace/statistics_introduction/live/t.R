female <- c(55, 50, 81, 89, 53, 88, 59, 53, 87, 71, 79, 75, 78, 61, 54, 50, 54, 50, 54, 81, 60, 78)
male <- c(55, 79, 81, 86, 78, 51, 74, 52, 85, 62, 59, 87, 87, 75, 77)

t.test(x = female, y = male, alternative = "two.sided", var.equal = T)

mat <- matrix(c(20, 13, 30, 12), nrow=2)
mat
chisq.test(mat, correct = FALSE)

