#mapping data
chicago <- readRDS("chicago.rds")
dim(chicago)
str(chicago)
names(chicago)
head(select(chicago, city::dptp))
head(select(chicago, -(city::dptp))
     
chic.f <- filter(chicago,pm25tmean<30 & tmpd >80)
head(chic.f)

chicago <- arrange(chicago, date)
chicago <- arrange(chicago, desc(date))

chicago <- rename(chicago, pm25 = pm25tmean2, dewpoint = dptp)
head(chicago)

chicago <- mutate(chicago, pm25detrent = pm25-mean(pm25, na.rm=TRUE))
head(select(chicago,pm25,pm25detrent))

chicago <- mutate(chicago, tempcat = factor(1*(tmpd>80), labels = c("cold","hot")))
hotcold <- group_by(chicago, tempcat)
#merging data
fileurl1 = "https://dl.dropboxusercontent.com/u/7710864/data/reviews-apr29.csv"
dtx1 <- getURL(fileurl1)
fileurl2 = "https://dl.dropboxusercontent.com/u/7710864/data/solutions-apr29.csv"
dtx2 <- getURL(fileurl2)
download.file(dtx1, destfile = "reviews.csv")
download.file(dtx2, destfile = "solutions.csv")
reviews = read.csv("reviews.csv"); solutions <- read.csv("solutions.csv")
head(reviews,2)

names(reviews)
names(solutions)

mergedData = merge(reviews, solutions, by.x = "solution_id", by.y="id", all=TRUE)

df1 = data.frame(id = sample(1:10), x=rnorm(10))
df2 = data.frame(id=sample(1:10), y=rnorm(10))
arrange(join(df1,df2), id)
df3 = data.frame(id=sample(1:10), z=rnorm(10))
dfList = list(df1,df2,df3)
join_all(dfList)
