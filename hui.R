myData <- read.csv(file="D:/INAA.csv", header=TRUE, sep=",")
myData
summary(myData)
plot(myData$La, myData$Lu)
