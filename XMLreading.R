xpathSApply(rootNode, "//name", xmlValue)
##> xpathSApply(rootNode, "//name", xmlValue)
##[1] "Belgian Waffles"             "Strawberry Belgian Waffles" 
##[3] "Berry-Berry Belgian Waffles" "French Toast"               
##[5] "Homestyle Breakfast" 

## load xml data from vebsite 
## Notice!!
## To access https webpage use RCurl package
##> library(RCurl)
##> xdata <- getURL(fileUrl)
##> doc <- xmlTreeParse(xdata, useInternalNodes = TRUE)
##> rootNode <- xmlRoot(doc)
##> xmlName(rootNode)
fileUrl <- "https://www.espn.com/nfl/team/_/name/bal/baltimore-ravens"
xdata <- getURL(fileUrl)
doc <- htmlTreeParse(xdata, useInternal = TRUE)
scores <- xpathSApply(doc, "//li[@class='score']", xmlValue)
teams <- xpathSApply(doc, "//li[@class='team-name']", xmlValue)
