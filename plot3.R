setwd("C:\\R_working")
colclasses = c("character", "character", rep("numeric",7))
data <- read.table(file="household_power_consumption.txt",header=T,sep=";", colClasses = colclasses, na.strings=c("?"))
data<-subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")
png(filename="plot3.png")
data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

plot(data$DateTime,as.numeric(type.convert(as.character(data$Sub_metering_1), dec = ".")), type = "l", xlab = "", ylab = "Energy sub metering", col = "black")

points(data$DateTime,as.numeric(type.convert(as.character(data$Sub_metering_2), dec = ".")), type = "l", xlab = "", ylab = "Energy sub metering", col = "red")

points(data$DateTime,as.numeric(type.convert(as.character(data$Sub_metering_3), dec = ".")), type = "l", xlab = "", ylab = "Energy sub metering", col = "blue")

legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()