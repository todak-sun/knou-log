
A <- c(269, 196, 254, 226, 215, 228, 251, 217, 260, 240)
B <- c(320, 281, 336, 303, 294, 354, 315, 259)
C <- c(283, 268, 357, 325, 288, 295, 272, 245, 275, 246, 341)


data <- c(A, B, C)


category <- c(rep(1, length(A)), rep(2, length(B)), rep(3, length(C)))
category <- factor(category)


aovDf <- data.frame(data, category)
aovDf


aovModel <- aov(data ~ category, data = aovDf)
aovModel
summary(aovModel)
