



n<-3; rho<-0.5;
g<-function(r)
    {
      integrate(
        function(beta)
        {
          1/(cosh(beta)-rho*r)^(n-1)
        }
      ,lower=0,upper=Inf)$value   # integrate would return a list otherwise
    }
 gv <- Vectorize(g)  
 # Since `g` is not naturally going to handle the vector that `curve` will send 
curve(gv(x),from=0,to=1)

mu<-0
sigma<-1
low<--Inf
up<-Inf
normdist<-function(mean=mu,sd=sigma)
          {
          integrate(function(x)
          {  
           probv<-c()
           for(i in (1:length(x)))
           {
            pd<-(1/(sd*sqrt(2*pi)))*exp((-1/2)*((x[i]-mean)/sd)*((x[i]-mean)/sd))
            probv<-c(probv,pd)
           }
           probv
           },low,up)$value
          }
normdist()

gv <- Vectorize(normdist)
 curve(gv(x),from=-2,to=2)

