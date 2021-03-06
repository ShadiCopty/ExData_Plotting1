data <- read.csv(file = "household_power_consumption.txt", dec=".", sep=";", stringsAsFactors=FALSE)
smallerData <- data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]
ap <- as.numeric(smallerData$Global_active_power)
datetime <- strptime(paste(smallerData$Date, smallerData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
sm1 <- as.numeric(smallerData$Sub_metering_1)
sm2 <- as.numeric(smallerData$Sub_metering_2)
sm3 <- as.numeric(smallerData$Sub_metering_3)
png("plot3.png", width=480, height=480)
plot(datetime, sm1, ylab="Energy Submetering", type="l", main="sub metering")
lines(datetime, sm2, type="l", col="red")
lines(datetime, sm3, type="l", col="blue")
dev.off()