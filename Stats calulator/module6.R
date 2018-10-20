inval<-function(str)
{
  val<-readline(paste("Enter  ",str," : "))
  as.numeric(val)
 }

chisq<-function(n=inval(" sample size "),ssd=inval(" sample standard deviation "),alpha=inval("alpha "),sdev=inval(" population std dev "))
{  
   chi<-((n-1)*(ssd^2))/(sdev^2)     
   foundval<-qchisq(1-alpha,n-1)
   if(chi>foundval)
     print(paste("since value",chi,"is greater than found val",foundval))
   else
     print(paste("since value",chi,"is lesser than found val",foundval))
}

ttest<-function(pmean=inval(" population mean"),smean=inval(" sample mean "),ssdev=inval(" sample std dev "),n=inval(" sample size"))
{ alpha=inval(" level of significance ")
  t<-(smean-pmean)/(ssdev/sqrt(n))
  foundval<-qt(1-alpha,n-1)
   if(t>foundval)
     print(paste("since value",t,"is greater than found val",foundval))
   else
     print(paste("since value",t,"is lesser than found val",foundval))

}

ftest<-function(n1=inval("sample size 1"),n2=inval("sample size 2"),svar1=inval(" sample variance 1 "),svar2=inval(" sample variance 2 "),pvar1=(" population variance 1 "),pvar2=(" population variance 2 "))
{
  alpha=inval("level of significance")
  f<-(pvar2*svar1)/(pvar1*svar2)
  foundval<-qf(1-alpha,n1-1,n2-1)
  if(f>foundval)
     print(paste("since value",f,"is greater than found val",foundval))
   else
     print(paste("since value",f,"is lesser than found val",foundval))

}

ztest<-function(n=inval("sample size "),pmean=inval(" population mean"),smean=inval(" sample mean "),pvar=inval("population variance "))
{ alpha=inval("level of significance")
  z<-(smean-pmean)/pvar/sqrt(n)
  foundval<-qnorm(alpha)
  if(z>foundval)
     print(paste("since value",z,"is greater than found val",foundval))
   else
     print(paste("since value",z,"is lesser than found val",foundval))

}

