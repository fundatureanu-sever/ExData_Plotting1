
library(lubridate)

# Read the whole csv file, eliminate rows containing NA
# and filter down to the 2 days of interest
loadAndPrepData <- function() {
  df <- read.csv("household_power_consumption.txt", sep=";", na.strings = "?")
  validDF <- df[complete.cases(df),]
  
  d1 <- ymd("2007-02-01")
  d2 <- ymd("2007-02-02")
  validDF$Date <- dmy(validDF$Date)
  validDF[validDF$Date == d1 | validDF$Date==d2,]
}
