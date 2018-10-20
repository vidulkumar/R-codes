intable<-table(cbind(data[,3],data[,7]))
row<-nrow(intable)
col<-ncol(intable)
inrates<-rownames(intable)

for (i in 1:row)
	 inrates[i]<-substr(inrates[i],1,6)

for (i in 1:row)
	 inrates[i]<-as.numeric(inrates[i])

p_avg_rate=c()
sum=0
col<-ncol(intable)
row<-nrow(intable)

for(j in 1:col)
	{ 
	 sum=0
	for (i in 1:row)
         {
            sum<-sum+(as.numeric(inrates[i])*intable[i,j])
         }
      colsum<-sum(intable[,j])
      p_avg_rate<-c(p_avg_rate,sum/colsum)

      }
names(p_avg_rate)<-colnames(intable)
p_avg_rate
min(p_avg_rate)
max(p_avg_rate)
ratio<-min(p_avg_rate)/max(p_avg_rate)

cat("ratio of minimum average rate amd maximum average rate is : ", ratio )
