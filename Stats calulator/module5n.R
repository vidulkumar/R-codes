mu<-6800
sigma<-2500
low<-6500
up<-7300

conunif<-function(alpha=inval("alpha"),beta=inval("beta"))
         {
            probv<-1/(beta-alpha)
            probv
          }


normdist<-function(meanv=inval(" MEAN "),sdev=inval(" standard deviation"))
          {
          integrate(function(x)
          {  
           probv<-c()
           for(i in (1:length(x)))
           {
            pd<-(1/(sdev*sqrt(2*pi)))*exp((-1/2)*((x[i]-meanv)/sdev)*((x[i]-meanv)/sdev))
            probv<-c(probv,pd)
           }
           probv
           },l=inval(" lower limit "),u=inval(" upper limit"))$value
          }


gamadist<-function(alpha=inval(" alpha "),beta=inval(" beta "))
           {
            if(alpha!=0.5) 
            { g<-factorial1(alpha-1)}
            else
             {g<-sqrt(pi)}
            k=1/((beta^alpha)*g)
           integrate(function(x)
          { 
            pd<-k*(x^(alpha-1))*exp(-x/beta)
            pd
           },l=inval(" lower limit "),u=inval(" upper limit "))$value

            }


expdist<-function(lambda=inval(" lambda "))
          { 
         
           integrate(function(x)
            {
           probv<-c()
          for(i in (1:length(x)))
           {
           pd<-lambda*exp(-lambda*x[i])
            probv<-c(probv,pd)
           }
           probv
            },low=inval(" lower limit "),up=inval(" upper limit "))$value
           
           }

#integrate(expdist(8.4),0,1/6) #example 6.1 page no 207 millar


binorm<-function()
         { print("for  X")
            mu1<-inval(" mean ")
            sdev1<-inval(" standard deviation ")
           print("for  Y")
            mu2<-inval(" mean ")
            sdev2<-inval(" standard deviation ")


                      }

