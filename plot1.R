data <- read.csv(file = "household_power_consumption.txt", dec=".", sep=";", stringsAsFactors=FALSE)
smallerData <- data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]
ap <- as.numeric(smallerData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(ap,main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.off()