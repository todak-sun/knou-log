rm(list = ls())

library(ggplot2)
library(forcats)

obesity <- factor(c("underweight", "normal", "overweight", "obese"),
  levels = c("underweight", "normal", "overweight", "obese")
)

count <- c(6, 69, 27, 13)
perc <- count / sum(count) * 100
dat2 <- data.frame(obesity, count, perc)

dat2

ggplot(data = dat2) +
  geom_bar(
    mapping = aes(x = obesity, y = perc),
    stat = "identity"
  ) +
  xlab("Obesity") +
  ylab("Percentage (%)")