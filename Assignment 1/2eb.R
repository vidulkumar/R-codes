expdata<-data[,c(2,5,6,10)]
expdata<-expdata[ ! ( ( expdata$loan_status =="Fully Paid" ) | ( expdata$loan_status =="Current" )| ( expdata$loan_status =="In Grace Period" )) ]
library(zoo)
row<-nrow(expdata)
differencedays<-c()
for(i in 1:nrow(expdata))
  differencedays<-c(differencedays,c(as.Date(as.yearmon(as.character(expdata[i,4]),"%b-%Y"))-as.Date(as.yearmon(as.character(expdata[i,2]),"%b-%Y"))))

dim(differencedays)<-c(length(differencedays),1)
expdata<-cbind(expdata,differencedays)
expdata<-expdata[,c(1,3,5)]
names(expdata)<-c("term","loan_status","diffInDays")
tmonths<-c()

for(i in 1:nrow(expdata))
  tmonths<-c(tmonths,as.numeric(substr(expdata[i,1],2,3)))

dim(tmonths)<-c(length(tmonths),1)

expdata<-cbind(expdata,tmonths)
expdata<-expdata[,c(2,3,4)]

names(expdata)<-c("loan_status","diffInDays","tmonths")

ratio<-c()

for(i in 1:nrow(expdata))
  ratio<-c(ratio,expdata[i,2]/(expdata[i,3]*30.4375))
dim(ratio)<-c(length(ratio),1)
expdata<-cbind(expdata,ratio)
names(expdata)<-c("loan_status","diffInDays","tmonths","ratio")
ratiodef<-c()

for(i in 1:nrow(expdata))
{
 if(expdata[i,1]=="Default")
   
   {
   ratiodef<-c(ratiodef,as.numeric(expdata[i,4]))
    }

}

sd(ratiodef)

cat("  standard deviation of difference of  ratio of all loans in default ",sd(ratiodef) )