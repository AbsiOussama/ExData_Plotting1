setwd("C:\\R_working")
colclasses = c("character", "character", rep("numeric",7))
data <- read.table(file="household_power_consumption.txt",header=T,sep=";", colClasses = colclasses, na.strings=c("?"))
data<-subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")
hist(as.numeric(type.convert(as.character(data$Global_active_power), dec = ".")), main = "Global Active Power", breaks = 14, xlab = "Global Active Power (kilowatts)", col = "red", xaxp = c(0, 6, 3))
## saving the plot as image (480x,480x) png
 