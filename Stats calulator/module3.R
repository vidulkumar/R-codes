factorial1<-function(n=inval(" n "))
    { fact=1
      if(n!=0)
         { 
      for(i in (1:n))
        { fact=fact*i
          }
       }
      fact
    }

permn1<-function(n= inval(" n "),r=inval("r "))
       { 
         p<-(factorial1(n)/factorial1(n-r))         
         p
        }
combin1<-function(n=inval(" n "),r=inval(" r "))
       {
        c<-(factorial1(n)/(factorial1(n-r)*factorial1(r)))
        c
       }
bprob<-function(fav_outcomes= inval(" no. of favorable outcome"),total_outcomes= inval(" no. of total outcome"))
       {
         p<-fav_outcomes/total_outcomes
         p     
         } 
bprob(3,5) 
cprob<-function(aAndb=inval(" probability of a and b"),b=inval("probability of b"))
          {
          aByb<-aAndb/b
          aByb
           }
intprob<-function(aByb=inval("probability of a / b"),b=inval("probability of b"))
           {
             aAndb<-aByb*b
             aAndb
            }
bayestheoram<-function(bBya=inval("probability of b/a"),a=inval("probability of a"),b=inval("probability of b"))
           {
           if (b!=0)
             {  bBya<-(bBya*a)/b
                bBya 
              }
           else
           { print("ERROR!!!!! b can't be zero")
              
            } 
                     
           } 
bayestheoram(0.99,0.005,(intprob(0.99,0.005)+intprob(1-0.99,1-0.005)))
