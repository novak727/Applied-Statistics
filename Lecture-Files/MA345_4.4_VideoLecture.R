## 4.4

# Give R access to location of CSV
Beers <- read.csv("Beers_and_Breweries.csv")

Beers.Denver <- Beers[Beers$city=="Denver", ] # Subset to only view beers in Denver
View(Beers.Denver)

Beers.Denver <- na.omit(Beers.Denver)
View(Beers.Denver)

Beers.Denver[which.max(Beers.Denver$abv),] # find max abv value 

RenegadeB <- Beers.Denver[Beers.Denver$brewery.name=="Renegade Brewing Company",]
View(RenegadeB)

WynkoopB <- Beers.Denver[Beers.Denver$brewery.name=="Wynkoop Brewing Company",]
View(WynkoopB)

mean(WynkoopB$abv)
sd(WynkoopB$abv)

mean(RenegadeB$abv);sd(RenegadeB$abv)

# Calculate CV

(sd(RenegadeB$abv)/mean(RenegadeB$abv))*100
(sd(WynkoopB$abv)/mean(WynkoopB$abv))*100

# install.packages("raster") if necessary
library(raster)
cv(RenegadeB$abv)
cv(WynkoopB$abv)
