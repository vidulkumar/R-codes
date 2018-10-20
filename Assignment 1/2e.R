library(zoo)
row<-nrow(data)
differencedays<-c()
for(i in 1:100)
differencedays<-c(differencedays,c(as.Date(as.yearmon(as.character(data[i,10]),"%b-%Y"))-as.Date(as.yearmon(as.character(data[i,5]),"%b-%Y"))))



