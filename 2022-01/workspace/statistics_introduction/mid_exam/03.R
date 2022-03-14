before <- c(80, 56, 49, 82, 70)

after <- c(76, 55, 52, 79, 72)

t.test(x = before, y = after, alternative = "greater", paired = TRUE)

#         Paired t-test

# data:  before and after
# t = 0.43994, df = 4, p-value = 0.3414
# alternative hypothesis: true difference in means is greater than 0
# 95 percent confidence interval:
#  -2.307451       Inf
# sample estimates:
# mean of the differences
#                     0.6