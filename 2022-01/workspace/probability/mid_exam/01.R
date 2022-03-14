par(mfrow = c(2, 2))

set.seed(7706)

dice10 <- sample(1:6, size = 10, replace = TRUE)
barplot(table(dice10) / 10, ylim = c(0, 0.3), main = "(a) n = 10")
abline(b = 0, a = 1 / 6, col = 2)

dice120 <- sample(1:6, size = 120, replace = TRUE)
barplot(table(dice120) / 120, ylim = c(0, 0.3), main = "(b) n = 120")
abline(b = 0, a = 1 / 6, col = 2)

dice1200 <- sample(1:6, size = 1200, replace = TRUE)
barplot(table(dice1200) / 1200, ylim = c(0, 0.5), main = "(c) n = 1200")
abline(b = 0, a = 1 / 6, col = 2)

dice12000 <- sample(1:6, size = 12000, replace = TRUE)
barplot(table(dice1200) / 12000, ylim = c(0, 0.5), main = "(d) n = 12000")
abline(b = 0, a = 1 / 6, col = 2)