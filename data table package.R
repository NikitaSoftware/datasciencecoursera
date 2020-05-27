## data.table package
library(data.table)
DF = data.frame(x = rnorm(9), y = rep(c("a", "b","c"), each = 3), z = rnorm(9))
head(DF,3)
DT = data.table(x = rnorm(9), y = rep(c("a", "b","c"), each = 3), z = rnorm(9))
head(DT,3)

tables()

##adding new column
DT[,w:=z^2]
DT2 <- DT
DT[, y:=2]
## all tables were changed because we didn`t any copy of DT`
head(DT)
head(DT2)

##multiple operations
DT[, m:= {tmp <- (x+z); log2(tmp+5)}]

## plyr like operations
DT[,a:=x>0]
DT[,b:=mean(x+z), by=a]

##special variables
set.seed(123)
DT <- data.table(x= sample(letters[1:3], 1E5, TRUE))
DT[, .N, by=x]

##keys
DT <- data.table(x=rep(c("a","b","c"), each=100), y=rnorm(300))
setkey(DT,x)
DT['a']

## joins
DT1 <- data.table(x=c('a','a','b','dt1'), y=1:4)
DT2 <- data.table(x=c('a','b','dt2'), z=5:7)
setkey(DT1,x); setkey(DT2,x)
merge(DT1,DT2)

##fast reading
bid_df <- data.frame(x=rnorm(1E6), y=rnorm(1E6))
file <- tempfile()
write.table(big_df, file= file, row.names=FALSE , col.names=TRUE, sep="\t", quote=FALSE)
system.time(fread(file))