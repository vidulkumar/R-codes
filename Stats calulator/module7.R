estoMean<-function(alpha=inval("level of significance"),n=inval("sample size"),smean=inval("sample mean"),psdev=inval("population std dev "))
         { z<-qnorm(1-(alpha/2))
           est<-(z)*(psdev/sqrt(n))
           print(paste("interval is : ",(smean-est)," < mu < ",(smean+est)))
         }
estoDiffMean<-function(alpha=inval("level of significance"),n1=inval("sample size 1"),n2=inval("sample size 2"),smean1=inval(" sample mean 1 "),smean2=inval(" sample mean 2 "),pvar1=inval(" population variance 1 "),pvar2=inval(" population variance 2 "))
        { z<-qnorm(1-(alpha/2))
          est<-z*sqrt((pvar1/n1)+(pvar2/n2))
          print(paste("interval is : ",(smean1-smean2-est)," < mu < ",(smean1-smean2+est)))

          }
estoProp<-function(alpha=inval("level of significance"),x=inval("x out of total "),n=inval("total size "))
         { prop<-x/n
           z<-qnorm(1-(alpha/2))
           est<-z*sqrt((prop*(1-prop))/n)
           print(paste("interval is : ",(prop-est)," < theta < ",(prop+est)))

          }
estoDiffProp<-function(alpha=inval("level of significance"),x1=inval("x out of total 1 "),n1=inval("total size 1 "),x2=inval("x out of total 2 "),n2=inval("total size 2 "),pvar1=inval(" population variance 1 "),pvar2=inval(" population variance 2 "))
         {
           prop1<-x1/n1
           prop2<-x2/n2
           z<-qnorm(1-(alpha/2))
           est<-z*sqrt(((prop1*(1-prop1))/n1)+((prop2*(1-prop2))/n2))
           print(paste("interval is : ",(prop1-prop2-est)," < theta < ",(prop1-prop2+est)))


          }
estoVar<-function(alpha=inval("level of significance"),s=inval("sample variance"),n=inval("sample size "))
         { chil<-qchisq((1-alpha/2),n-1)
           chiu<-qchisq((alpha/2),n-1)
           estl<-((n-1)*s)/chil
           estu<-((n-1)*s)/chiu
           print(paste("interval is : ",estl," < var < ",estu))

          }
estoRatoVar<-function(alpha=inval("level of significance"),n1=inval("sample size 1"),n2=inval("sample size 2"),svar1=inval(" sample variance 1 "),svar2=inval(" sample variance 2 "))
          { f1<-qf(1-(alpha/2),n1-1,n2-1)
            
            f2<-qf(1-(alpha/2),n2-1,n1-1)
            print(f1)
            print(f2)
           estl<-svar1/(svar2*f1)
           estu<-(svar1/svar2)*f2
           print(paste("interval is : ",estl," < pvar1/pvar2 < ",estu))

           }  