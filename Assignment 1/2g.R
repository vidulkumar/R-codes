datag1<-table(data[,c(7,8)])
datag2<-table(data[,7])
aprob<-c()
options(digits=10)
for (i in 1:length(datag2))
   aprob<-c(aprob,as.numeric(datag2[i]/sum(datag2)))

matg<-matrix(0,nrow=nrow(datag1),ncol=ncol(datag1))
for(i in 1:ncol(datag1))
{
   for (j in 1:nrow(datag1))
   {
  matg[j,i]=datag1[j,i]/sum(datag1[,i])
  }

}

rownames(matg)<-rownames(datag1)
colnames(matg)<-colnames(datag1)

fmat<-matrix(0,nrow=nrow(datag1),ncol=ncol(datag1))
for(i in 1:nrow(datag1))
{
   for (j in 1:ncol(datag1))
   {
  fmat[i,j]=datag1[i,j]/aprob[i]
  }

}
rownames(fmat)<-rownames(datag1)
colnames(fmat)<-colnames(datag1)
rowname<-rownames(datag1)
colname<-colnames(datag1)
fvec<-c()
for(i in 1:nrow(datag1))
{
   for (j in 1:ncol(datag1))
   {
    if((datag1[i,j])>9)
  {
   fvec<-c(fvec,fmat[i,j])
   }
  }
}
m<-max(fvec)

for(i in 1:nrow(fmat))
{
   for (j in 1:ncol(fmat))
   {
  if(fmat[i,j]==m)
    {
   
  print(m)
  print(rowname[i])
  print(colname[j])

    }
  }
}


