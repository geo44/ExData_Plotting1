#Read in and tidy data.
source("load_data.R")

#Open graphics device 
png(filename = "plot3.png")

#Plot line graph
plot(hpc$Time, hpc$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")

#Add lines in red and blue
lines(hpc$Time, hpc$Sub_metering_2, col = "red")
lines(hpc$Time, hpc$Sub_metering_3, col = "blue")

#Create legend in corresponding colors
leg.txt <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
legend("topright", leg.txt, col = c("black", "red", "blue"), lty = 1)

#close graphics device
dev.off()