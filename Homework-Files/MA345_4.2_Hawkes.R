## Much faster way to calculate CV
Hawkes.Data <- c(2.91,4.07,3.80,4.79,3.65,4.44,3.38,4.49,3.73,3.11,3.10)
Hawkes.CV <- (sd(Hawkes.Data) / mean(Hawkes.Data))*100
print(Hawkes.CV)

## Custom Population variance function
pop_var <- function(x) {
  # Remove NA values if present, to prevent formula returning NA
  if (anyNA(x)) {
    x <- na.omit(x)
  }
  
  mu <- mean(x)
  
  population_variance <- sum((x - mu)^2) / length(x)
  
  return(population_variance)
}

## Custom Population Standard Deviation function
pop_sd <- function(x, na.rm = FALSE) {
  if (na.rm) {
    x <- x[!is.na(x)]
  }
  n <- length(x)
  if (n == 0) return(NA)
  #Calculate square root of mean of squared deviations
  sqrt(mean((x-mean(x))^2))
}

Hawkes.Data <- c(4,4,4,6,4,6,9,6,4,40)
Hawkes.PV <- pop_var(Hawkes.Data)
print(Hawkes.PV)
Hawkes.PSD <- pop_sd(Hawkes.Data)
print(Hawkes.PSD)

Hawkes.Data <- c(76,65,86,67,81,81,85,64,63,66,78,64,79,77,86,84,78,71,86,65)
sd(Hawkes.Data)

Hawkes.Data <- c(13,13,13,13,13,13,13,13,13,13)
Hawkes.PV <- pop_var(Hawkes.Data)
print(Hawkes.PV)
Hawkes.PSD <- pop_sd(Hawkes.Data)
print(Hawkes.PSD)

## Certify
Hawkes.Data <- c(10,4,-7,4,10,4,10)
sd(Hawkes.Data)

Hawkes.Data <- c(85,70,86,82,75,90,73,82,79,99,73,94,72,99)
Hawkes.CV <- (sd(Hawkes.Data) / mean(Hawkes.Data))*100
print(Hawkes.CV)

Hawkes.Data <- c(55.4,53.6,57.7,59.0,56.8,52.4,54.7,50.0,59.8,58.2,56.1)
Hawkes.CV <- (sd(Hawkes.Data) / mean(Hawkes.Data))*100
print(Hawkes.CV)

Hawkes.Data <- c(98.1,97.9,98.7,96.4,98.2,97.2,99.5,99.0,99.2,97.9,96.6,97.9,
                 97.3,97.2,96.4,96.5,98.1,99.3,96.7,98.7)
sd(Hawkes.Data)

Hawkes.Data <- c(10,9,4,9,4,3,6,7,6,29)
Hawkes.PV <- pop_var(Hawkes.Data)
print(Hawkes.PV)
Hawkes.PSD <- pop_sd(Hawkes.Data)
print(Hawkes.PSD)
