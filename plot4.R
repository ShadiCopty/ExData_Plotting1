data <- read.csv(file = "household_power_consumption.txt", dec=".", sep=";", stringsAsFactors=FALSE)
smallerData <- data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]
ap <- as.numeric(smallerData$Global_active_power)
datetime <- strptime(paste(smallerData$Date, smallerData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot4.png", width=480, height=480)
plot(datetime, ap,main="Global Active Power over time", ylab="Global Active Power (kilowatts)", type="l")
dev.off()