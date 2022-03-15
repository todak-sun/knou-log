rm(list = ls())
par(mfrow = c(1, 1))


before <- c(72, 80, 83, 63, 66, 76, 82)
after <- c(78, 82, 82, 68, 70, 75, 88)

# before => x, after => y
cor(before, after)
plot(x = before, y = after)

reg <- lm(after ~ before)
summary(reg)
#  Y = 15.44 + 0.83X
abline(reg)

# Coefficients:
#             Estimate Std. Error t value Pr(>|t|)
# (Intercept)  15.4381    11.7438   1.315  0.24572
# before        0.8332     0.1567   5.316  0.00315 **
# ---
# Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

# Residual standard error: 3.022 on 5 degrees of freedom
# Multiple R-squared:  0.8497,    Adjusted R-squared:  0.8196
# F-statistic: 28.26 on 1 and 5 DF,  p-value: 0.003151

# 상관계수: 0.921773