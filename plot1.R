setwd("C:\\R_working")
colclasses = c("character", "character", rep("numeric",7))
data <- read.table(file="household_power_consumption.txt",header=T,sep=";", colClasses = colclasses, na.strings=c("?"))
data<-subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")
View(data)

