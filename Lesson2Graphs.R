# Lesson2 Plotting
#Base Plot Base Plot
library(datasets)
data(cars)
with(cars, plot(speed, dist))
#Lattice Plot
library(lattice)
state <- data.frame(state.x77, region = state.region)
xyplot(Life.Exp ~ Income | region, data = state, layout = c(4, 1))
#ggplot2 Plot ggplot2 Plot
library(ggplot2)
data(mpg)
qplot(displ, hwy, data = mpg)


#=========================================
#Base plotting system
#Simple Base Graphics: Histogram
library(datasets)
hist(airquality$Ozone) ## Draw a new plot
#Simple Base Graphics: Scatterplot Simple Base Graphics: Scatterplot
library(datasets)
with(airquality, plot(Wind, Ozone))
#Simple Base Graphics: Boxplot Simple Base Graphics: Boxplot
library(datasets)
airquality <- transform(airquality, Month = factor(Month))
boxplot(Ozone ~ Month, airquality, xlab = "Month", ylab = "Ozone (ppb)")
#Default values for global graphics parameters
par("lty") 
par("col")
par("pch")
par("bg")
par("mar")
par("mfrow")
#Base Plot with Annotation Base Plot with Annotation
library(datasets)
with(airquality, plot(Wind, Ozone))
title(main = "Ozone and Wind in New York City") ## Add a title
with(airquality, plot(Wind, Ozone, main = "Ozone and Wind in New York City"))
with(subset(airquality, Month == 5), points(Wind, Ozone, col = "blue"))
with(airquality, plot(Wind, Ozone, main = "Ozone and Wind in New York City",
                      type = "n"))
with(subset(airquality, Month == 5), points(Wind, Ozone, col = "blue"))
with(subset(airquality, Month == 4), points(Wind, Ozone, col = "green"))
with(subset(airquality, Month != 5), points(Wind, Ozone, col = "red"))
legend("topright", pch = 1, col = c("blue","green", "red"), legend = c("May","April", "Other Months"))
with(airquality, plot(Wind, Ozone, main = "Ozone and Wind in New York City",
                      pch = 20))
model <- lm(Ozone ~ Wind, airquality)
abline(model, lwd = 2)
#Multiply base plot
par(mfrow = c(1, 2))
with(airquality, {
  plot(Wind, Ozone, main = "Ozone and Wind")
  plot(Solar.R, Ozone, main = "Ozone and Solar Radiation")
})
par(mfrow = c(1, 3), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))
with(airquality, {
  plot(Wind, Ozone, main = "Ozone and Wind")
  plot(Solar.R, Ozone, main = "Ozone and Solar Radiation")
  plot(Temp, Ozone, main = "Ozone and Temperature")
  mtext("Ozone and Weather in New York City", outer = TRUE)
})













