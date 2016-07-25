## plot 1
setwd("T:/dpv/Holding/Strategische Marktanalyse/Studien & Hintergrundwissen/Imme Privat/Data Science_Coursera/Exploratory Data Analysis/Week 1")
data <- read.csv("household_power_consumption.txt", header=F, skip=66637, nrows=2880, sep = ";", na.strings="?")
names(data) <- names(read.csv("household_power_consumption.txt", nrows=1, sep=";"))

png("plot1.png", width=480, height=480)
hist(data$Global_active_power, xlab="Global Active Power(kilowatts)", main="Global Active Power", col = "red")
dev.off()