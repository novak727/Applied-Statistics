## 4.5

Mi <- c(110.5,120.5,130.5,140.5,150.5,160.5,170.5,180.5,190.5,200.5)
fi <- c(5,7,15,14,20,10,9,8,7,5)

xbar <- sum(Mi*fi)/sum(fi) # mean of grouped data
xbar

variance <- sum((Mi-xbar)^2*fi)/(sum(fi)-1)
variance
StDev <- sqrt(variance)
StDev
