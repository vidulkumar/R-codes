data2 <- read.table("LoanStats3c.csv",header=TRUE ,skip = 1,stringsAsFactors = FALSE, sep = ",", na.strings = "NA" , fill= TRUE, blank.lines.skip = TRUE )
data <- read.table("LoanStats3d.csv",header=TRUE ,skip = 1,stringsAsFactors = FALSE, sep = ",", na.strings = "NA" , fill= TRUE , blank.lines.skip = TRUE )
mydata<-rbind(data,data2)
median(data.matrix(data[,3]),na.rm=TRUE)