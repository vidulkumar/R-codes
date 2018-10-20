conunif<-function(alpha=enalpha(),beta=enbeta())
         {
          }


normdist<-function(mean=0,sd=1)
          {
          innernorm<-function(x)
          {  
           probv<-c()
           for(i in (1:length(x)))
           {
            pd<-(1/(sd*sqrt(2*pi)))*exp((-1/2)*((x[i]-mean)/sd)*((x[i]-mean)/sd))
            probv<-c(probv,pd)
           }
           probv
           }
          }
integrate(normdist(),-Inf,-0.88)

gv <- Vectorize(integrate(normdist(),-Inf,-0.88))  
 
curve(gv(x),from=0,to=1)
binorm<-function()
         {


           
           }



gamadist<-function(alpha,lambda)
           {

           probv<-c()
           for(i in (1:length(x)))
           {
 
            probv<-c(probv,pd)
           }
           probv
           }
            }

expdist<-function(lambda)
          {
           innerexp<-function(x)
            {
           probv<-c()
          for(i in (1:length(x)))
           {
           pd<-lambda*exp(-lambda*x[i])
            probv<-c(probv,pd)
           }
           probv
            }
           
           }

integrate(expdist(8.4),0,1/6) #example 6.1 page no 207 millar

