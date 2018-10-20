berndist<-function(x=inputdata(),p=inval("probabilty"))
       {  probv<-c()
           for(i in (1:length(x)))
           {
         prob<-(p^x)*((1-p)^(1-x))
         probv<-c(probv,prob)
           }
           probv
        }
binodist<-function(x=inputdata(),n=inval("size"),p=inval("probabilty")) #similar to dbinom(x,size,prob)
         { probv<-c()
           for(i in (1:length(x)))
           {
            
           ncx<-combin1(n,x[i])
           prob<-ncx*(p^x[i])*((1-p)^(n-x[i]))
           probv<-c(probv,prob)
           }
           probv
           } 
 binodist(2,5,2/3)
geomdist<-function(x=inputdata(),p=inval("probabilty"))
          {
           probv<-c()
           for(i in (1:length(x)))
           {
            
            prob<-(p)*((1-p)^(x[i]-1))
            probv<-c(probv,prob)
           }
           probv
           }  
hypedist<-function(x=inputdata(),m=inval(" m "),n=inval(" n "),k=inval(" k ")) #n=N-M,k=n,m+n=N,m=M (rhs=>millarbook) same as dhyper ,assumption : m+n<=170
          {
            probv<-c()
           for(i in (1:length(x)))
           { 
            
            prob<-combin1(m,x[i])*combin1(n,k-x[i])/combin1(m+n,k)
            probv<-c(probv,prob)
           }
           probv
           }
 hypedist(0,4,24-4,6)
negadist<-function(x=inputdata(),size,p=inval("probabilty")) #x be the number of failures, size be thenumber of success, same as dnbinom
           {
            probv<-c()
           for(i in (1:length(x)))
           {
            prob<-combin1(x[i]+size-1,size-1)*(p^size)*((1-p)^x[i])
              probv<-c(probv,prob)
           }
           probv             
             }
 negadist(7,3,0.4)
poisdist<-function(x=inputdata(),lambda=inval( " lambda "))
          {   probv<-c()
           for(i in (1:length(x)))
           {
             prob<-((lambda^x[i])*exp(-lambda))/factorial1(x[i])
               probv<-c(probv,prob)
           }
           probv 
            }
 poisdist(5,8)

multdist<-function(x=inputdata(),n=inval("size"),p=inval("probabilty"))
          {
           if(length(x)!=length(p))
              print("error!!! ")
           else
             {
              denom<-1
              num<-1
              for(i in (1:length(x)))
               { denom<-denom*factorial(x[i])
                 num<-num*(p[i]^x[i])
                 }
               prob<-(factorial(n)*num)/denom
               prob
                }
           }
 multdist(t,8,pr)


