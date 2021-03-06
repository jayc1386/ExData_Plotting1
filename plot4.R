plot4 <- function(){
     data <- read.table("power.csv", sep=",", header=TRUE)
     data$Time <- strptime(data$Time, "%Y-%m-%d %H:%M:%S")
     data <- data[order(by=data$Time),]
     
     png("plot4.png", 504, 504)
     plot.new()
     par(mfrow=c(2,2))
     with(data, {plot(data$Time, data$Global_active_power,type="l",
                      xlab="", ylab="Global Active Power (kilowatts)")
                 plot(data$Time, data$Voltage, type="l",
                      xlab="datetime", ylab="Voltage")
                 plot(data$Time, data$Sub_metering_1, type="l",
                      xlab="", ylab="Energy sub metering")
                 lines(data$Time, data$Sub_metering_2, type="l", col="red")
                 lines(data$Time, data$Sub_metering_3, type="l", col="blue")
                 legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
                        lty=1, col=c("black","red","blue"), bty = "n")
                 plot(data$Time, data$Global_reactive_power, type="l",
                      xlab="datetime", ylab="Global_reactive_power")})
     dev.off()
}