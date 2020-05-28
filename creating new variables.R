# creating new variables
s1 <- seq(1,10,by=2); s1

s2 <- seq(1,10,length=3); s2

x <- c(1,3,8,25,100); seq(along = x)
#subsetting vars
restData$nearMe = restData$neighborhood %in% c("Roland park", "Homeland")
table(restData$nearMe)
#binary vars
restData$zipWrong = ifelse(restData$zipCode <0, TRUE, FALSE)
table(restData$zipWrong, restData$zipCode<0)
# categorical vars
restData$zipGroups = cut(restData$zipCode, breaks = quantile(restData$zipCode))
table(restData$zipGroups)

table(restData$zipGroups, restData$zipCode)
# easier cutting
library(Hmisc)
restData$zipGroups = cut2(restData$zipCode,g=4)
table(restData$zipGroups)
#factor vars
restData$zcf <- factor(restData$zipCode)
restData$zcf[1:10]
class(restData$zcf)
#cutting factors
restData$zipGroups = cut2(restData$zipCode,g=4)
table(restData$zipGroups)
#or
library(plyr)
restData2 = mutate(restData, zipGroups = cut2(zipCode,g=4))
table(restData2$zipGroups)