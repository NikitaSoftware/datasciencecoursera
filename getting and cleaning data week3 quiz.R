#getting and cleaning data week3 quiz
#q1
url <- getURL("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv")
data <- download.file(url, destfile = "file.csv")
data <- read.csv("getdata_data_ss06hid.csv")

agricultureLogical <- data$ACR ==3 & data$AGS == 6
which(agricultureLogical)
#q2
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg", destfile = "quiz2jpeg.jpg")
jpgdat = readJPEG("quiz2jpeg.jpg", native = TRUE)
quantile(jpgdat, probs = c(0.3, 0.8))

#q3
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv", destfile = "quiz3data.csv")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv", destfile = "quiz3data2.csv")
countries = fread("quiz3data.csv", nrows = 190, select = c(1, 2, 4, 5), col.names=c("CountryCode", "Rank", "Economy", "Total"))
education = fread("quiz3data2.csv")
all = merge(countries, education, by = "CountryCode")
dim(all)

all <- arrange(all, desc(Rank))

head(all,13)[33]
#q4
unique(all$`Income Group`)
tapply(all$Rank, all$`Income Group`, mean, na.rm = TRUE)
#q5
all$RankGroups <- cut2(all$Rank, g=5)
table(all$RankGroups, all$`Income Group`)
table(all$RankGroups, all$`Income Group`)[4]