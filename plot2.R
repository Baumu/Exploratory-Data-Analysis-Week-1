## plot 2
setwd("T:/dpv/Holding/Strategische Marktanalyse/Studien & Hintergrundwissen/Imme Privat/Data Science_Coursera/Exploratory Data Analysis/Week 1")
data <- read.csv("household_power_consumption.txt", header=F, skip=66637, nrows=2880, sep = ";", na.strings="?")
names(data) <- names(read.csv("household_power_consumption.txt", nrows=1, sep=";"))

datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot2.png", width=480, height=480)
plot(datetime, data$Global_active_power, xlab=" ", ylab="Global Active Power (kilowatts)", main="", col="black", type="l")
dev.off()