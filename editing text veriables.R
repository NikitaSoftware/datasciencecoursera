#editing text veriables
cameraData <- read.csv("cameras.csv")
names(cameraData)
tolower(names(cameraData))

splitNames = strsplit(names(cameraData), "\\.")
splitNames[5]
splitNames[6]

mylist <- list(letters = c("A","b","c"), numbers = 1:3, matrix(1:25, ncol = 5))
head(mylist)

mylist[1]
#$letters
#[1] "A" "b" "c"
mylist$letters
#[1] "A" "b" "c"
mylist[[1]]
#[1] "A" "b" "c"
splitNames[[6]][1]
#[1] "Location"
firstElement <- function(x){x[1]}
sapply(splitNames,firstElement)
######
names(reviews)
sub("_","", names(reviews))

testName <- "this_is_a_test"
sub("_","",testName)
#[1] "thisis_a_test"
gsub("_","",testName)
#[1] "thisisatest"


#searching
grep("Alameda", cameraData$intersection)
#[1] 65 69 79
table(grepl("Alameda", cameraData$intersection))

cameraData2 <- cameraData[grepl("Alameda", cameraData$intersection),]

grep("Alameda", cameraData$intersection, value = TRUE)
#[1] "E 33rd  & The Alameda"    "The Alameda  & 33rd St"  
#[3] "Harford \n & The Alameda"
grep("JeffStreet", cameraData$intersection)
#integer(0)
length(grep("JeffStreet", cameraData$intersection))
#[1] 0
library(stringr)
nchar("Jeffrey Leek")
#[1] 12
substr("Jeffrey Leek",1,7)
#[1] "Jeffrey"
paste("Jeffrey", "Leek")
#[1] "Jeffrey Leek"
paste0("Jeffrey", "Leek")
#[1] "JeffreyLeek"
str_trim("Jeff     ")
#[1] "Jeff"