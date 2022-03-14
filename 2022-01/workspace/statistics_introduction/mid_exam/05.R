mat <- matrix(c(12, 18, 15, 15),
  nrow = 2,
  dimnames = list(c("A", "B"), c("O", "X")),
  byrow = TRUE
)

chisq.test(mat, correct = FALSE)