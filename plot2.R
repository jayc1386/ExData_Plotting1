plot2 <- function(){
     data <- read.table("power.csv", sep=",", header=TRUE)
     data$Time <- as.POSIXct(strptime(data$Time, "%Y-%m-%d %H:%M:%S"))
     data <- data[order(by=data$Time),]
     
     png("plot2.png", 504, 504)
     plot.new()
     plot(data$Time, data$Global_active_power,type="l",
          xlab="", ylab="Global Active Power (kilowatts)")
     dev.off()
}