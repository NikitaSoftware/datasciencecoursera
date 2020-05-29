#getting and cleaning data week4 quiz
#q1
furl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(furl, destfile = "quiz4getting.csv")
data <- read.csv("quiz4getting.csv")
tolower(names(data))
q1 = strsplit(names(data), "wgtp") 
q1[123]

#q2
furl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
download.file(furl, destfile = "quiz4getting.csv")
data <- read.csv("quiz4getting.csv")
colnames(data) <- c("CountryCode", "Rank", "Country", "Total")
data$Total <- as.integer(gsub(",", "", data$Total))
mean(data$Total, na.rm = T)
#q3
data$Country <- as.character(data$Country)
data$Country[99] <- "Côte d’Ivoire"
data$Country[186] <- "São Tomé and Príncipe"

data$Country[grep("^United", data$Country)]
#q4
Q4GDP_Url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
Q4GDP_Path <- "/home/cabunic/Data Science/Coursera/3 - Getting and Cleaning Data/Week 3/Q3GDP.csv"
Q4Edu_Url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
Q4Edu_Path <- "/home/cabunic/Data Science/Coursera/3 - Getting and Cleaning Data/Week 3/Q3Edu.csv"

download.file(Q4GDP_Url, Q4GDP_Path, method = "curl")
download.file(Q4Edu_Url, Q4Edu_Path, method = "curl")

Q4GDP <- fread(Q4GDP_Path, skip = 5, nrows = 190, select = c(1, 2, 4, 5), col.names = c("CountryCode", "Rank", "Economy", "Total"))
Q4Edu <- fread(Q4Edu_Path)
Q4_Merge <- merge(Q4GDP, Q4Edu, by = 'CountryCode')
Q4_Merge

FiscalJune <- grep("Fiscal year end: June", Q4_Merge$`Special Notes`)
NROW(FiscalJune)
#q5
library(quantmod)
library(lubridate)
amzn = getSymbols("AMZN", auto.assign=FALSE)
sampleTimes = index(amzn)

amzn2012 <- sampleTimes[grep("^2012", sampleTimes)]
NROW(amzn2012)
NROW(amzn2012[weekdays(amzn2012) == "Monday"])