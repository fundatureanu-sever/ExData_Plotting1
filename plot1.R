
source("common.R")

plot1ToFile <- function() {
  data <- loadAndPrepData()
  plot1 <- png(file="plot1.png")
  hist(daysDF$Global_active_power, main="Global Active Power", 
     col="red", xlab = "Global Active Power (kilowatts)" )
  dev.off()
}
