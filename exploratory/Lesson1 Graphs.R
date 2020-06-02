# Lesson1:Graphs
# Principles of analutic graphics
#  Principle 1 : Show comparisons
#  Principle 2 : Show causality, mechanizm, explanation
#  Principle 3 : Show multivariate data
#  Principle 4 : Integrate multiple mods of evidence
#  Principle 5 : Describe and document evidence
#  Principle 6 : Content is king

pollution <- read.csv2("avgpm25.csv", col.names = c("pm25", "fips", "region", "longitude", "latitude"))
head(pollution)
summary(pollution$pm25)
#boxplot
boxplot(pollution$pm25, col = "blue")
#Histogram
hist(pollution$pm25, col = "green")
rug(pollution$pm25)

hist(pollution$pm25, col = "green", breaks = 100)
rug(pollution$pm25)

#Overlaying Features 
boxplot(pollution$pm25, col = "blue")
abline(h = 12)
hist(pollution$pm25, col = "green")
abline(v = 12, lwd = 2)
abline(v = median(pollution$pm25), col = "magenta", lwd = 4)
#Barplot
barplot(table(pollution$region), col = "wheat", main = "Number of Counties in Each Region")
#Multiple Boxplots
boxplot(pm25 ~ region, data = pollution, col = "red")
#Multiple Histograms
par(mfrow = c(2, 1), mar = c(4, 4, 2, 1))
hist(subset(pollution, region == "east")$pm25, col = "green")
hist(subset(pollution, region == "west")$pm25, col = "green")
#Scatterplot Scatterplot
with(pollution, plot(latitude, pm25))
abline(h = 12, lwd = 2, lty = 2)
#Scatterplot - Using Color 
with(pollution, plot(latitude, pm25, col = region))
abline(h = 12, lwd = 2, lty = 2)
#Multiple Scatterplots 
par(mfrow = c(1, 2), mar = c(5, 4, 2, 1))
with(subset(pollution, region == "west"), plot(latitude, pm25, main = "West"))
with(subset(pollution, region == "east"), plot(latitude, pm25, main = "East"))

