## Practice

# Only should need to change values here, everything else is automated
Hawkes.Mi <- c(54.5,62.5,70.5,78.5,86.5)
Hawkes.fi <- c(4,10,2,12,5)

# Sample mean
Hawkes.xbar <- sum(Hawkes.Mi*Hawkes.fi)/sum(Hawkes.fi)
Hawkes.xbar

# Sample Variance
Hawkes.SampleVariance <- sum((Hawkes.Mi-Hawkes.xbar)^2*Hawkes.fi)/
                        (sum(Hawkes.fi)-1)
Hawkes.SampleVariance
Hawkes.StDev <- sqrt(Hawkes.SampleVariance)
Hawkes.StDev


# Population Variance
Hawkes.PopulationVariance <- sum(Hawkes.fi*Hawkes.Mi^2)/sum(Hawkes.fi) -
                            (sum(Hawkes.fi*Hawkes.Mi)/sum(Hawkes.fi))^2
Hawkes.PopulationVariance
Hawkes.StDev <- sqrt(Hawkes.SampleVariance)
Hawkes.StDev
