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

table(transp)

dat3 <- data.frame(
  transportation = c("bus", "bicyle", "walking"),
  count = c(15, 13, 4)
)

dat3

ggplot(data = dat3) +
  geom_bar(
    mapping = aes(x = "", y = count, fill = transportation),
    stat = "identity"
  ) +
  coord_polar("y", start = 0) +
  xlab("") +
  ylab("")

  
ggplot(data = dat3) +
  geom_bar(
    mapping = aes(x = "", y = count, fill = transportation),
    stat = "identity"
  ) +
  coord_polar("y", start = 0) +
  xlab("") +
  ylab("") +
  theme(
    axis.text = element_blank(),
    axis.ticks = element_blank(),
    panel.grid = element_blank()
  )