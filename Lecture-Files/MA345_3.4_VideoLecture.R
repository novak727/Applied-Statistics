#3.4

CWins <- c(61,85,67,68,78,76,73,81,85,87,66,97,88,90,84,77,71,79,77,84,73,83,89,
           67,49,93,96,80,66,92,97,75,79,65,73,77,77,64,75,84,103,71,66,88,76,
           77,70,38,75,83)

# Frequency histogram
hist(CWins)

brk <- seq(30,110, by=15)
hist(CWins, breaks = brk)


# Stem-and-leaf plot
stem(CWins)
# Read as 38, 49, 61.4....

# Dot plot
# install.packages("graphics")
library(graphics)

dotchart(CWins, pch=18)


# Ordering data
Ages <- c(32,21,24,19,61,18,18,16,16,35,39,17,22,21,60,18,53,18,57,63,28,20,29,
          35,45)
sort(Ages, decreasing = FALSE)
