histo<-function(x=inputdata())
  { hist(x,border="blue",col="yellow")

  }

lineg<-function(x=inputdata())
  {
    plot(x,type="o",col="red")

  }      
bargraph<-function(x=inputdata())
  {
    barplot(table(x))
  }   
piechart<-function()
  { print("input slices")
    x=inputdata()
    pie(x,col=rainbow(length(table(x))))
  }   
scatplot<-function(x = inputdata())
  {
   plot(x)

  }   
box_plot<-function(x=inputdata())
  {
   boxplot(x,col=rainbow(length(table(x))))

  }    
q_qplot<-function()
  {
   print("input data for x")
   x=inputdata()
   print("input data for y")
   y=inputdata()
   qqplot(x,y)
   
  }     
stemplot<-function(x=inputdata())
  {
  stem(x)

  }   
paretochart<-function(x=inputdata())
  {
   pareto.chart(x)

  }