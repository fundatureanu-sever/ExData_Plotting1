
source("common.R")
source("plot2.R")
source("plot3.R")

plot4ToFile <- function() {
  data <- loadAndPrepData()
  plot4 <- png(file="plot4.png")
  data$Time <- hms(data$Time)

  par(mfrow=c(2,2))

  makePlot2(data, "Global Active Power")
  with(data, plot(Date + Time, Voltage, 
                   type="l", ylab="Voltage", xlab="datetime"))
  makePlot3(data)
  with(data, plot(Date + Time, Global_reactive_power, type="l", 
                   ylab="Global_reactive_power", xlab="datetime"))
  dev.off()
}
