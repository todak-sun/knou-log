rm(list = ls())


for (i in 1:9) {
  if (i > 3) {
    break
  }
  for (j in 1:9) {
    if (j > 1) break
    cat(i, " X ", j, " = ", i * j, " \n")
  }
}