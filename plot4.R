## plot 4
setwd("T:/dpv/Holding/Strategische Marktanalyse/Studien & Hintergrundwissen/Imme Privat/Data Science_Coursera/Exploratory Data Analysis/Week 1")
data <- read.csv("household_power_consumption.txt", header=F, skip=66637, nrows=2880, sep = ";", na.strings="?")
names(data) <- names(read.csv("household_power_consumption.txt", nrows=1, sep=";"))

png("plot4.png", width=480, height=480)
par(mfrow= c(2,2))

datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
plot(datetime, data$Global_active_power, xlab=" ", ylab="Global Active Power (kilowatts)", main="", col="black", type="l")

plot(datetime, data$Voltage, xlab="datetime", ylab="Voltage", col="black", type="l")

plot(datetime, data$Sub_metering_1, xlab=" ", ylab="Energy sub metering", main="", col="black", type="l")
lines(datetime, data$Sub_metering_2, type="l", col="red")
lines(datetime, data$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

plot(datetime, data$Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", col="black", type="l")
