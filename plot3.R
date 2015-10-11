source("load_data.R")

png(filename = "plot3.png")

plot(hpc$Time, hpc$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")

lines(hpc$Time, hpc$Sub_metering_2, col = "red")
lines(hpc$Time, hpc$Sub_metering_3, col = "blue")

leg.txt <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
legend("topright", leg.txt, col = c("black", "red", "blue"), lty = 1)

dev.off()