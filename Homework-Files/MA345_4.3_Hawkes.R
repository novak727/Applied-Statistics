Hawkes.NB <- c(8.2,6.7,9.4,7.4,9.1,7.6,8.9,6.9,9.2,8.0,6.9,8.7,5.7,6.1,5.4)

quantile(Hawkes.NB, probs=0.33)


Hawkes.ST <- c(72,84,88,76,92,52,60,48,78,48)
quantile(Hawkes.ST, probs=c(0.25,0.50,0.75))

Hawkes.Dt <- c(33,55,19,37,41,50,55,49,49,14,39,39,42,45)
quantile(Hawkes.Dt, probs=c(0.25,0.75))

Hawkes.Dt2 <- c(26,2,47,40,20,7,26,25,39,44,36,38,50,33,13)
quantile(Hawkes.Dt2, probs=c(0.25,0.75))

Hawkes.NB2 <- c(8.3,6.5,6.0,5.4,6.7,6.5,8.1,9.2,6.4,8.0,6.8,9.0,8.7,9.3,8.0)
quantile(Hawkes.NB2, probs=0.42)

Hawkes.ST2 <- c(61,53,65,67,51,49,45,81,55,63)
quantile(Hawkes.ST2, probs=c(0,0.25,0.50,0.75,1))

Hawkes.Dt3 <- c(55,47,38,44,49,47,48,4,49,32,41,30,19,44)
quantile(Hawkes.Dt3, probs=c(0.25,0.75))

Hawkes.Dt4 <- c(48,44,32,30,50,28,18,49,21,44,34,42,39,13,18)
quantile(Hawkes.Dt4, probs=c(0.25,0.75))
