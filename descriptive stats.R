
data <- read.csv(file="D:/INAA.csv", header=TRUE, sep=",")
data
class(data)
View(data)
write.csv(data, file="data2.csv", quote=TRUE, na="na", row.names=FALSE)
install.packages("xlsx")
require("xlsx")
mydata <- read.xlsx(file="D:/FS 2020-21/Sample Slip/20.02.21.xlsx", 1)
View(mydata)
help(read.xlsx)
class(mydata)
length(mydata)
length(data)
write.xlsx(data, file="data2.xlsx", sheetName="sheet1", col.names=TRUE, row.names=FALSE)
install.packages("foreign")
require(foreign)
install.packages("rjson")
require(rjson)
data$x3
View(data)
data[, c("Ce", "La")]
data$La
data[order(data$La), ]
data[order(data$La, decreasing=TRUE), ]
data[order(data$La, data$Lu), ]
data[data$La > 100, ]
data[data$La > 100 & data$x < 500, ]
na.omit(data)
data[!duplicated(data$La), ]
y <- table(data$La)
print(y)
names(y) [which(y==max(y))]
median(data$Ce)
mode(data$La)
res <- range(data$La)
diff(res)
quantile(data$La)
IQR(data$La, na.rm=TRUE)
N <- nrow(data)
var(data$La) * (N - 1) / N
var(data$Ce)
N <- nrow(data);
variance <- var(data$Eu) * (N - 1) / N;
sqrt(variance)
sd(data$Eu)
hist(data$La, breaks=10)
qqnorm(data$La)
qqline(data$La)
shapiro.test(data$La)
installed.packages("moments")
require(moments)
skewness(data$La)
kurtosis(data$La)
sum<-summary(data)
View(sum)
write.xlsx(data, file="data_summary.xlsx", sheetName="sheet1", col.names=TRUE, row.names=FALSE)
str(data)
barplot(data$La,xlab="La", ylab="concentration in ppm", main="Bar Chart 1", col="green", freq=FALSE)
barplot(data$La,xlab="La", ylab="concentration in ppm", main="Bar Chart 1", col="green", horiz=TRUE)
barplot(data$Ce, xlab="Ce", ylab="ppm", main="Ce Bar Chart", col=c("grey", "blue", "yellow"))
hist(data$Ce, main="histogram", xlab="Ce", col="green",border="blue", breaks=10)
plot(data$La, data$Ce, type="l", xlab="La", ylab="Ce", main="La-Ce correlations", col="blue")
plot(data$La, data$Ce, type="p", xlab="La", ylab="Ce", main="La-Ce correlations", col="blue")
pie(data$Lu, labels, main="Pie Chart")
install.packages("plotrix")
require(plotrix)
pie3D(data$La)
pie3D(data$La, labels=labels, explode=0.1, main="Pie Chart")
plot(data$La, data$Ce, xlab="La", ylab="Ce", main="scatterplot")
boxplot(data$La, main="boxplot", notch=FALSE, varwidth=TRUE,col=c("green", "purple", "blue"))
boxplot(data$La, main="boxplot", notch=TRUE, varwidth=TRUE,col=c("green", "purple", "blue"))
pairs(data$La)
install.packages("igraph")
require(igraph)
g <- graph(edges=c("John", "James", "James", "Mary", "Mary", "John"), directed=FALSE)
plot(g)
g <- graph(edges=c("John", "James", "James", "Mary", "Mary","John"), directed=TRUE);
plot(g)
require(ggplot2)
install.packages("stringr")
install.packages ("stringi")
install.package("colorspaces")
install.packages("labelling")
install.packages("munsell")
i