data <- read.csv(file = "household_power_consumption.txt", dec=".", sep=";", stringsAsFactors=FALSE)
smallerData <- data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]
ap <- as.numeric(smallerData$Global_active_power)
rp <- as.numeric(smallerData$Global_reactive_power)
sm1 <- as.numeric(smallerData$Sub_metering_1)
sm2 <- as.numeric(smallerData$Sub_metering_2)
sm3 <- as.numeric(smallerData$Sub_metering_3)
datetime <- strptime(paste(smallerData$Date, smallerData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
v <- as.numeric(smallerData$Voltage)
png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 
plot(datetime, ap,main="Global Active Power over time", ylab="Global Active Power (kilowatts)", type="l")
plot(datetime, v,main="Voltage", ylab="Voltage (kilowatts)", type="l")
plot(datetime, sm1, ylab="Energy Submetering", type="l", main="sub metering")
lines(datetime, sm2, type="l", col="red")
lines(datetime, sm3, type="l", col="blue")
plot(datetime, rp,main="Global reActive Power over time", ylab="Global reActive Power (kilowatts)", type="l")
dev.off()