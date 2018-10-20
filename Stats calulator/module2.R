sum1<-function(x)
    { SUM<-0
      for ( i in (1:length(x)))
        { 
             SUM=SUM+x[i]
           }
        SUM
      }



cor1(s[,2],s[,3])
 cor(s[,2],s[,3])
 

cor1<-function(data1=inputdata(),data2=inputdata())
    {
     if(length(data1)!=length(data2))
        print("ERROR INCOMPATIBLE DIMENSIONS")
        else
{
     xbar<-mean1(data1)
     ybar<-mean1(data2)
      x_xbar<-c()
  y_ybar<-c() 
        N<-length(data1)
     for (i in (1:(length(data1)))) 
         {
      
          if(is.numeric(data1[i])==FALSE|is.numeric(data2[i])==FALSE)
            {
             print("DATA NOT NUMERIC")
             return
             }
          x_xbar<-cbind(x_xbar,data1[i]-xbar)
          y_ybar<-cbind(y_ybar,data2[i]-ybar)
                   
         }
        xy<-x_xbar*y_ybar
        xx<-x_xbar*x_xbar
        yy<-y_ybar*y_ybar        
        #print(paste(sumxxbaryybar,sumsqxxbar,sumsqyybar,denom))
        r<-sum(xy)/sqrt(sum(xx)*sum(yy))
        print(r)
        r 
         }
      }
