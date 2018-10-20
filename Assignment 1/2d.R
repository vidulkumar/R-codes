termtable2014<-table(data1[,2])
termtable2015<-table(data2[,2])

options(digits=10)

frac2014<-termtable2014[1]/sum(termtable2014)
frac2015<-termtable2015[1]/sum(termtable2015)

frac2014
frac2015

difference=frac2014-frac2015
cat(" difference in fractionof loans for 36 months term  between 2014 and 2015 ", difference) 