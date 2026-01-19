## 4.1

## A grade of A=4 points, B=3 points, C=2 points on a 4-point scale

## Calculate GPA, round to 2 decimals

grd <- c(2,4,3,4)
wgt <- c(3,4,5,3)
MegGrd <- weighted.mean(grd,wgt)
round(MegGrd, digits = 2)

## Find sample mean, 10% trimmed mean, median, and mode for goal tallies from
## 11 soccer games

goals <- c(2,3,5,4,2,7,3,4,1,2,6)

mean(goals) # sample mean

mean(goals, trim = 0.1) # 10% trimmed mean

median(goals)