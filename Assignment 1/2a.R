library(data.table)
data1<-fread(file.choose())
data2<-fread(file.choose())
data1<-data1[,c(3,6,7,10,16,17,21,24,39,46)]
data2<-data2[,c(3,6,7,10,16,17,21,24,39,46)]

data<-rbind(data1,data2)
median(data.matrix(data[,1]),na.rm=TRUE)
cat("median loan amount is ",median(data.matrix(data[,1]),na.rm=TRUE))

a<-table(data[,7])
listPurposeName<-names(table(data[,7]))
options(digits=10)

for(i in 1:length(a))
	{
	if(max(a)==a[i])
 	pname<-listPurposeName[i]
	}

cat("fraction of loan for most common purpose ",pname," ",max(a)/sum(a))
