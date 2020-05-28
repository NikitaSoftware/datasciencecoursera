# subsetting and sorting
set.seed(13435)
x <- data.frame("var1"=sample(1:5),"var2"=sample(6:10), "var3"=sample(11:15))
x<- x[sample(1:5),]; x$var2[c(1,3)] = NA
x
x[,1]
x[,"var1"]
x[1:2,"var2"]

x[(x$var1 <= 3 & x$var3 > 11),]
x[(x$var1 <= 3 | x$var3 > 15),]

x[which(x$var2 >8),]

#sorting
sort(x$var1)
sort(x$var1, decreasing = TRUE)
sort(x$var2, na.last = TRUE)
#orderig
x[order(x$var1),]
x[order(x$var1, x$var3),]
#ordering by plyr
library(plyr)
arrange(x,var1)

##adding rows and columns
x$var4 <- rnorm(5)
x

Y <- cbind(x, rnorm(5))
Y