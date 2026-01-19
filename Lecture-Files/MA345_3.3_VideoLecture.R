#3.3

HRD <- c(77,84,79,90,67,84,82,74,88,75,69,81,94,68,65,86,78,79,79,70,83,83,84,
         82,93,80,81,80,87,80,62,98,77,83,82,80,82,73,85,77,77,79,81,70,72,85,
         84,80,74,83)

# lower and upper bound, by=width
Breaks <- seq(60,100, by=8)

# right=FALSE includes the leftmost value but not the rightmost
# So range will be [60,68) [68,76) [76, 84) [84,92), [92,100)
HRD.Cut <- cut(HRD, Breaks, right=FALSE)
HRD.Cut.Freq <- table(HRD.Cut) # Frequency distribution
cbind(HRD.Cut.Freq)

table(HRD.Cut)/length(HRD) # Relative frequency distribution

# Cumulative Frequency Distribution Table
cumsum(HRD.Cut.Freq)
