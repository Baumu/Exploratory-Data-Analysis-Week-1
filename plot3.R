## plot 3
setwd("T:/dpv/Holding/Strategische Marktanalyse/Studien & Hintergrundwissen/Imme Privat/Data Science_Coursera/Exploratory Data Analysis/Week 1")
data <- read.csv("household_power_consumption.txt", header=F, skip=66637, nrows=2880, sep = ";", na.strings="?")
names(data) <- names(read.csv("household_power_consumption.txt", nrows=1, sep=";"))

datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
data$Sub_metering_1 <- as.numeric(data$Sub_metering_1)

png("plot3.png", width=480, height=480)
plot(datetime, data$Sub_metering_1, xlab=" ", ylab="Energy sub metering", main="", col="black", type="l")
lines(datetime, data$Sub_metering_2, type="l", col="red")
lines(datetime, data$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()