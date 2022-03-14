par(mfrow = c(1, 1))

rm(list = ls())
before <- c(72, 80, 83, 63, 66, 76, 82)
after <- c(78, 82, 82, 68, 70, 75, 88)

# before => x, after => y
cor(before, after)
reg <- lm(after ~ before)
reg
summary(reg)
#  Y = 15.44 + 0.83X

plot(x = before, y = after)
abline(reg)