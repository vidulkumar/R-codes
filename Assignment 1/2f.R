data6<-data[,c(1,6,9)]
rret<-c()
for(i in 1:nrow(data6))
{
   if(data6[i,2]=="Fully Paid")
    rret<-c(rret,((as.numeric(data6[i,3])-as.numeric(data6[i,1]))/as.numeric(data6[i,1]))*100)

}

mean(rret)
median(rret)
mad(rret)
var(rret)
IQR(rret)
library(moments)
skewness(rret)
kurtosis(rret)