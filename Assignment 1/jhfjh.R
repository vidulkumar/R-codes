m<-x
col<-ncol(m)
 row<-nrow(m)
y<-matrix(nrow=col,ncol=row)
 for(i in 1:row)
 {
   for(j in 1:col)
   {
 y[j,i]<-x[i,j]
 
 }
}
y