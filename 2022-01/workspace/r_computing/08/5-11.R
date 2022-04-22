f_default <- function(data, num = 1) {
  d.min <- min(data)
  d.max <- max(data)
  switch(num, mean(data), var(data), c(d.min, d.max))
}

args(f_default)
