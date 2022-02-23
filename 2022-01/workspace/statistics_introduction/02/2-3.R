# install.packages("ggplot2")
# install.packages("forcats")

rm(list = ls())

library(ggplot2)
library(forcats)

transp <- c(
  "bicyle", "bus", "bus", "walking", "bus",
  "bicyle", "bicyle", "bus", "bus", "bus",
  "bicyle", "bus", "bicyle", "bicyle",
  "walking", "bus", "bus", "bicyle", "bicyle",
  "walking", "walking", "bicyle", "bus",
  "bus", "bus", "bus", "bicyle", "bus",
  "bus", "bicyle", "bicyle", "bicyle"
)

dat1 <- data.frame(transp)

ggplot(data = dat1) +
  geom_bar(mapping = aes(x = transp)) +
  xlab("Transportation")

ggplot(data = dat1) +
  geom_bar(mapping = aes(x = fct_infreq(transp))) +
  xlab("Transportation")