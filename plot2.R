
source("common.R")

makePlot2 <- function(data, ylabel) {
  with(data,
       plot(Date + Time, Global_active_power, 
            type="l", 
            ylab=ylabel, xlab=""))
}

plot2ToFile <- function() {
  data <- loadAndPrepData()
  plot2 <- png(file="plot2.png")
  data$Time <- hms(data$Time)
  makePlot2(data, "Global Active Power (killowatts)")
  dev.off()
}


