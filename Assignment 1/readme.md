list of objects for part a
=============================

library loaded : data.table( for using fread() function )

data1 : data of year 2014 with columns 3 ( "loan_amnt")  6 ("term")  7("int_rate"),10("sub_grade"),16 ("issue_d")     
 17("loan_status") 21( "purpose")    24(  "addr_state") 39("total_pymnt") 46( "last_pymnt_d")

data2 : data of year 2015

data : combined data of year 2014 and 2015
======================================================================================================================================================================
list of objects for part b
=============================

listPurposeName :list of names of columns

pname : holds  value of most common purpose
======================================================================================================================================================================

list of objects for part c
=============================

intable : table of data of intrest rate and purpose

row : number of rows in intable

col : number of columns in intable

p_avg_rate : vector containing average rate for each purpose

ratio : containing ratio of minimum average rate and maximum average rate

========================================================================================================================================================================
list of objects for part d
=============================

termtable2014 : table of term of data of year 2014 

termtable2015 : table of term of data of year 2015

frac2014 : fraction of 36 months term ofyear 2014

frac2015 : fraction of 36 months term ofyear 2015

difference : diffrence of the fractions 2014 and 2015
======================================================================================================================================================================== 
list of objects for part e
==============================
expdata<- subset of data containg colums "term", "issue_d", "loan_status","last_payment_d"

expdata<-expdata[ ! ( ( expdata$loan_status =="Fully Paid" ) | ( expdata$loan_status =="Current" )| ( expdata$loan_status =="In Grace Period" )) ]

// this line of code is used to delete rows of column loan_status with status "Fully Paid" or "Current" or "In Grace Period "

library(zoo) is loaded in library to load function as.yearmon() to convert string of type charcter of format "mon-yyyy" to date

differencedays : contains difference in days of issue_d and last_pymnt_d

tmonths : term months in numeric form

ratiodef : vector containing  required ratio 
 
======================================================================================================================================================================== 
list of objects for part f
==============================

data6<-data containing loan amount loan status and total payment required for calculating rate of return


rate of return is calculated as ((total_payment-loanamount)/(loan_amount))*100

library(moments) is loaded to calculate skewness and kurtosis 
  

======================================================================================================================================================================== 
list of objects for part g
==============================
datag1 : containing table of purpose and state address
datag2 : containing table of purpose

aprob : vector containing  probability of a loan going to a specific purpose nationwide
matg : table containing probability of a loan going to a specific purpose for each state
fmat : matrix containing B/A


