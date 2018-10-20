inputdata<-function()
         {print(" 1. enter data from file ")
          print(" 2. enter data manualy   ") 
         choice<-readline(prompt="  Enter your choice................")
             switch(choice,
                '1' = {      dvec<-as.vector(read.csv(file.choose()))    },

                '2' = {    dvec<-scan()        }     
                )
        if(choice=='1')
           dvec<-dvec[,1]
      dvec
    }
inval<-function(str)
{
  val<-readline(paste("Enter  ",str," : "))
  as.numeric(val)
 }
sum1<-function(data=inputdata())
    { 
      SUM<-0
      for ( i in 1:length(data))
        { 
             SUM<-SUM+data[i]
           }
        SUM
      }



mean1<-function(data=inputdata()){
  print(data)
 # data<-data[!na.rm(data)]
  total<-sum1(data)
  #print(total)
  elements<-length(data)
  #print(paste("mean is ",total/elements))

  return(total/elements)
  
}


median1<-function(data=inputdata()){
  data1<-sort(data)
  size<-length(data1)
  if (size%%2==0){
    med=(data1[(size/2)]+data1[(size/2)+1])/2
    cat("the median is",med)
  }else{
    med=data1[(size%/%2)+1]
    cat("the median is",med)
    return(med)
  }
}


mode1 <- function(v=inputdata()) {
  uniqv <- unique(v)
  mod=uniqv[which.max(tabulate(match(v, uniqv)))]
  print(mod)
  return(mod)
}


variance1<-function(data=inputdata()){
 # data<-data[!na.rm(data)]
  size<-length(data)
  var=0
  mean=mean1(data)
  for(i in (size-1)){
    var=var+(((data[i]-mean)^2)/size)
  }
  print(paste("variance is ",var))
  return(var)
}


stdev1<-function(data=inputdata()){
  var=variance1(data)
  stddev=sqrt(var)
  print(stddev)
  stddev 
}

# mean absolute deviation
mad1<- function(data=inputdata()){
  size=length(data)
  mean=mean1(data)
  total=0
  for (i in 1:length(data)){
    total=total+abs((data[i]-mean))
    
  }
  mad=total/size
  return(mad)
}



maximum<-function(data=inputdata()){
   maxm<-data[1]
  for(i in 2:length(data)){
    if (maxm<data[i]){
      maxm=data[i]
      
    }
  }
  return(maxm)
}



minimum<-function(data=inputdata()){
   minm<-data[1]
  for(i in 2:length(data)){
    if (minm>data[i]){
      minm=data[i]
      
    }
  }
  return(minm)
}


range1<-function(data=inputdata()){
  max=maximum(data)
  min=minimum(data)
  result= max-min
  return(result)
}



quartile<-function(data=inputdata()){
  size<-length(data)
  data1<-sort(data)
  q2<-median1(data)
  
  
  q1<-function(data1){
    
  if((size/4)==0){
        q1<-(data1[(size/4)]+data1[(size/4)+1])/2
        cat("q1 is",q1)
        return(q)
        }else{
          q1<-data1[(size+1)/4]
          cat("q1 is",q1)
          return(q1)
            }
  } 

  
  q3<-function(data1){
    
  if(((3*size)/4)==0){
    q3<-(data1[(3*size)/4]+data1[((3*size)/4)+1])/2
    cat("q3 is",q3)
    return(q3)
  }else{
    q3<-data1[(((3*size)+1)/4)]
    cat("q3 is",q3)
    return(q3)
  }
  }
}


skewness1<-function(data=inputdata()){
  m1<-mean1(data)
  mo<-mode1(data)
  std<-stdev1(data)
  return((m1-mo)/std)
  
}
moment1<-function(data=inputdata())
{
  u1<-c()
  su<-c()
  cu<-c()
  qu<-c()
  meand<-mean1(data)
  for(i in 1:length(data))
   {u1<-rbind(u1,(data[i]-meand))
    su<-rbind(su,(data[i]-meand)^2)
    cu<-rbind(cu,(data[i]-meand)^3)
    qu<-rbind(qu,(data[i]-meand)^4)
   }
print(paste("first moment is : ",sum(u1)/12))
print(paste("second moment is : ",sum(su)/12))
print(paste("third moment is : ",sum(cu)/12))
print(paste("fourth moment is : ",sum(qu)/12))
}




