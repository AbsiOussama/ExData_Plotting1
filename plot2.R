setwd("C:\\R_working")
Sys.setlocale(locale = "C")
colclasses = c("character", "character", rep("numeric",7))
Data <- read.table(file="household_power_consumption.txt",header=T,sep=";", colClasses = colclasses, na.strings=c("?"))
#subsetting data between 1 and 2 february 2007
Data <- subset(Data, Data$Date == "1/2/2007" | Data$Date == "2/2/2007")
#creating datatime variable
Data$DateTime <- strptime(paste(Data$Date, Data$Time), "%d/%m/%Y %H:%M:%S")
#ploting 
plot(Data$DateTime,as.numeric(type.convert(as.character(Data$Global_active_power), dec = ".")), type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

Sys.setlocale(locale = "")