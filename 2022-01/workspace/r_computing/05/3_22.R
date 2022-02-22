rm(list = ls())

setwd("d:/workspace/github/knou-log/2022-01/workspace/r_computing/05")

df <- read.table("./data/story.txt", row.names = "num", header = T)
