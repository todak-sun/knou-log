# rm(list = ls())

d.var <- function(data) {
  data.var <- sum((data - d.mean(data))^2) / (length(data - 1)) # Var
  return(data.var) # return data.var
}

"%a2b%" <- function(a, b) return (a + 2 * b)
3 %a2b% 5