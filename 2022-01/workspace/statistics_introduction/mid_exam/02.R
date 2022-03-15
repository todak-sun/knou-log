rm(list = ls())

sit_up_count <- c(
  25, 41, 35, 8, 52, 23, 32, 37, 42, 28
)

sit_up_count

mean(sit_up_count)

t.test(sit_up_count, mu = 25, alternative = "two.sided")