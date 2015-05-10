setwd("C:/HAVEn/Coursera/Exploratory Data Analysis/Week1/Course Project 1")
DF.All <- read.table("household_power_consumption.txt",  sep = ";" ,header = TRUE)
DF.PLOT <- DF.All[DF.All$Date %in% c("1/2/2007","2/2/2007"),]
globalActivePower <- as.numeric(DF.PLOT$Global_active_power)
submetering1 <- as.numeric(DF.PLOT$Sub_metering_1)
submetering2 <- as.numeric(DF.PLOT$Sub_metering_2)
submetering3 <- as.numeric(DF.PLOT$Sub_metering_3)
Sample.date.time <- strptime(paste(DF.PLOT$Date, DF.PLOT$Time), "%d/%m/%Y %H:%M:%S")
png("plot3.png", width=480, height=480)
plot(Sample.date.time,submetering1, type="l", xlab = "", ylab = "Energy sub metering")
lines(Sample.date.time,submetering2, type="l", col="red")
lines(Sample.date.time,submetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=1, lwd=2, col=c("black","red","blue"))
dev.off()