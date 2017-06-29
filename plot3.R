
source("common.R")

makePlot3 <- function(data) {
  with( data, plot(Date + Time, Sub_metering_1 + Sub_metering_2 + Sub_metering_3, 
                   type="n" , ylim=c(0,38), 
                   ylab="Energy sub metering", xlab=""))
  with(data, lines(Date+Time, Sub_metering_1, col="darkgrey"))
  with(data, lines(Date+Time, Sub_metering_2, col="red"))
  with(data, lines(Date+Time, Sub_metering_3, col="blue"))
  legend("topright", col=c("darkgrey", "red", "blue"), 
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
         pch="__")
}

plot3ToFile <- function() {
  data <- loadAndPrepData()
  plot3 <- png(file="plot3.png")
  data$Time <- hms(data$Time)
  makePlot3(data)
  dev.off()
}
