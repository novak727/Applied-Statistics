## Read in Beers_and_Breweries.csv first if needed

Beers.Missoula <- Beers[Beers$city=="Missoula",]
View(Beers.Missoula)

Beers.Missoula.IPA <- Beers.Missoula[Beers.Missoula$beer.style=="American IPA",]
View(Beers.Missoula.IPA)

Beers.SanDiego <- Beers[Beers$city=="San Diego",]
View(Beers.SanDiego)

Beers.SanDiego.IPA <- Beers.SanDiego[Beers.SanDiego$beer.style=="American IPA",]
View(Beers.SanDiego.IPA)

Beers.Cincinnati <- Beers[Beers$city=="Cincinnati",]
View(Beers.Cincinnati)

Beers.Cincinnati.RhinegeistB <- Beers.Cincinnati[Beers.Cincinnati$brewery.name==
                                                   "Rhinegeist Brewery",]
View(Beers.Cincinnati.RhinegeistB)
mean(Beers.Cincinnati.RhinegeistB$abv)
sd(Beers.Cincinnati.RhinegeistB$abv)
cv(Beers.Cincinnati.RhinegeistB$abv)

MPD <- read.csv("Mount_Pleasant_Real_Estate_Data.csv")
MPD <- na.omit(MPD)
MPD.acreage <- MPD[MPD$Acreage<=0.1,]
MPD.acreage <- na.omit(MPD.acreage)
View(MPD.acreage)

mean(MPD.acreage$List.Price)



Beers.SanDiego.TailGateB <- Beers.SanDiego[Beers.SanDiego$brewery.name==
                                             "TailGate Beer",]
View(Beers.SanDiego.TailGateB)


Beers.SanFrancisco <- Beers[Beers$city=="San Francisco",]
View(Beers.SanFrancisco)

Beers.SanFrancisco.Amendment <- Beers.SanFrancisco[
  Beers.SanFrancisco$brewery.name=="21st Amendment Brewery",]
View(Beers.SanFrancisco.Amendment)



MPD.CharlestonSingle <- MPD[MPD$House.Style=="Charleston Single",]
View(MPD.CharlestonSingle)
mean(MPD.CharlestonSingle$List.Price)


Beers.Brooklyn <- Beers[Beers$city=="Brooklyn",]
View(Beers.Brooklyn)

Beers.Brooklyn.KelSo <- Beers.Brooklyn[Beers.Brooklyn$brewery.name==
                                         "KelSo Beer Company",]
View(Beers.Brooklyn.KelSo)
mean(Beers.Brooklyn.KelSo$abv)
sd(Beers.Brooklyn.KelSo$abv)
