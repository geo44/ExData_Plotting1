#Read in and tidy data.
source("load_data.R")

#Open graphics device
png(filename = "plot4.png")

#Set the position of the graphs
par(mfrow = (c(2,2)))

#Plot the four line graphs
plot(hpc$Time, hpc$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)",
     xlab = "")

plot(hpc$Time, hpc$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")

plot(hpc$Time, hpc$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(hpc$Time, hpc$Sub_metering_2, col = "red")
lines(hpc$Time, hpc$Sub_metering_3, col = "blue")
leg.txt <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
legend("topright", leg.txt, col = c("black", "red", "blue"), lty = 1)

plot(hpc$Time, hpc$Global_reactive_power, type = "l", ylab = "Global_reactive_power", 
     xlab = "datetime")

#close graphics device
dev.off()