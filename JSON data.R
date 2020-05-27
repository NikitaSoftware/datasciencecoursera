##reading json data
jsonData <- fromJSON("https://api.github.com/users/jtleek/repos")
names(jsonData)

names(jsonData$owner)

## to json
myjson <- toJSON(iris, pretty = TRUE)
cat(myjson)

## from json
iris2 <- fromJSON(myjson)
head(iris2)