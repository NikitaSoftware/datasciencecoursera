#summarizing data

fileUrl <- "https://data.baltimorecity.gov/Culture-Arts/Restaurants/k5ry-ef3g/rows.csv?accessType=DOWNLOAD"
fixurl <- getURL(fileUrl)
download.file(fileUrl, destfile = "./restaurants.csv")
restData <- read.csv("./restaurants.csv")

head(restData,n=3)
tail(restData, n=3)

summary(restData)
str(restData)

quantile(restData$councilDistrict,na.rm=TRUE)

table(restData$zipCode,useNA="ifany")
table(restData$councilDistrict, restData$zipCode)

sum(is.na(restData$councilDistrict))

any(is.na(restData$councilDistrict))

all(restData$zipCode>0)

colSums(is.na(restData))

all(colSums(is.na(restData)))

table(restData$zipCode %in% c("21212"))
table(restData$zipCode %in% c("21212","21213"))

#values with spec char
restData[restData$zipCode %in% c("21212","21213"),]
#cross tabs
data("UCBAdmissions")
DF = as.data.frame(UCBAdmissions)
summary(DF)

xt <- xtabs(Freq ~ Gender + Admit, data = DF)
xt

#flat tables
warpbreaks$replicate <- rep(1:9, len = 54)
xt = xtabs(breaks ~.,data = warpbreaks)
xt

ftable(xt)
# size of dataset
fakeData = rnorm(1e5)
object.size(fakeData)

print(object.size(fakeData), units="Mb")