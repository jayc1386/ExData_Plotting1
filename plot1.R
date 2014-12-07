plot1 <- function(){
     data <- read.table("power.csv", sep=",", header=TRUE)
     
     png("plot1.png", 504, 504)
     hist(data$Global_active_power,
          main="Global Active Power", 
          xlab="Global Active Power (kilowatts)",
          col="red")
     dev.off()
}