setwd("C:/HAVEn/Coursera/Exploratory Data Analysis/Week1/Course Project 1")
DF.All <- read.table("household_power_consumption.txt",  sep = ";" ,header = TRUE)
DF.PLOT <- DF.All[DF.All$Date %in% c("1/2/2007","2/2/2007"),]
globalActivePower <- as.numeric(DF.PLOT$Global_active_power)
Sample.date.time <- strptime(paste(DF.PLOT$Date, DF.PLOT$Time), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(Sample.date.time,globalActivePower/1000, type="l", xlab = "", ylab = "Global Active Power (Kilowatts)")
dev.off()
