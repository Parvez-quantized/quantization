#Here is dates and time in R (firs load tidyverse by install.packages('tidyverse'))
library(lubridate)
today()
now()
#strings to date
ymd("2021-05-10")
mdy("05-10-2021")
#creating date time components
ymd_hms("2021-05-10_02-41-30")
as_date(now())
#creating a file
file.create("100521_midnight.csv")
#copying a file
file.copy("100521_midnight.csv","destination folder")
#delete a file
unlink("100521_midnight")
#creating a matrices
matrix(c(3,8,9,4), nrow = 2,ncol = 2)
#logical operators
x<-13
x<20 & x>2
#conditional statement-1
if(x<20 {print("x is less than 20"")}
#conditional statement_2
x <- 7
if (x > 0) {print("x is a positive number")} else {print ("x is either a negative number or zero")}
#conditional statement_3
x <- -1
if (x < 0) {print("x is a negative number")} else if (x == 0) {print("x is zero")} else {print("x is a positive number")}