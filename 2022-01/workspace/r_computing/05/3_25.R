cbind(test1, test3)

char1 <- rep(LETTERS[1:3], c(1, 2, 2))
char1

num1 <- rep(1:3, c(1, 1, 3))
num1

test4 <- data.frame(char1, num1)
test4

rbind(test1, test4)