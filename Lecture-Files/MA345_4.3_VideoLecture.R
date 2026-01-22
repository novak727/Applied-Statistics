## 4.3

Dt <- c(3,5,0,1,9,2,7,3,8,5,12,8,9,4)

# calculates percentiles, probs=p/100 from formula
quantile(Dt, probs=c(0.05,0.2,0.25,0.5,0.75,0.93))

boxplot(Dt, horizontal = T)

