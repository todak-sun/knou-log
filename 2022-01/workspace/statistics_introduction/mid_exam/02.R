
sit_up_count <- c(
  25, 41, 35, 8, 52, 23, 32, 37, 42, 28
)

mean(sit_up_count)

t.test(sit_up_count, alternative = "two.sided", mu = 25)