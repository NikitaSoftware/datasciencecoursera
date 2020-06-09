#Lesson3 Graphics Devices in R
library(datasets)
## Make plot appear on screen device
with(faithful, plot(eruptions, waiting)) 
## Annotate with a title   
title(main = "Old Faithful Geyser data") 
## Open PDF device; create 'myplot.pdf' in my working directory
pdf(file = "myplot.pdf") 
## Create plot and send to a file (no plot appears on screen)
with(faithful, plot(eruptions, waiting))
title(main = "Old Faithful Geyser data") ## Annotate plot; still nothing on screen
dev.off() ## Close the PDF file device
## Now you can view the file 'myplot.pdf' on your computer

library(datasets)
with(faithful, plot(eruptions, waiting)) ## Create plot on screen device
title(main = "Old Faithful Geyser data") ## Add a main title
dev.copy(png, file = "geyserplot.png") ## Copy my plot to a PNG file
dev.off() ## Don't forget to close the PNG device!