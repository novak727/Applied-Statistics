Hawkes.HT <- c(91.9,84.1,80.9,83.8,87.0,81.8,83.7,91.8,92.5,85.5,89.8,85.0,81.9,
               94.1,92.6,84.1,80.5,84.7)

Hawkes.HT.Breaks <- seq(80,95, by=3)

Hawkes.HT.Cut <- cut(Hawkes.HT, Hawkes.HT.Breaks, right=FALSE)

Hawkes.HT.Cut.Freq <- table(Hawkes.HT.Cut)

cbind(Hawkes.HT.Cut.Freq)


Hawkes.Refrigerators <- c(1348,1169,1454,1155,1345,1434,1409,1276,1113,1111,
                          1219,1463,1429,1210,1107,1339,1116,1423,1297,1242,
                          1155)

Hawkes.Refrigerators.Breaks <- seq(1105,1465, by=60)

Hawkes.Refrigerators.Cut <- cut(Hawkes.Refrigerators,
                                Hawkes.Refrigerators.Breaks, right=FALSE)

Hawkes.Refrigerators.Cut.Freq <- table(Hawkes.Refrigerators.Cut)

cbind(Hawkes.Refrigerators.Cut.Freq)

table(Hawkes.Refrigerators.Cut)/length(Hawkes.Refrigerators)
