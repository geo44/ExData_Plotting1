#Read in and tidy data.
source("load_data.R")

#Open graphics device, plot line graph, and close graphics device.
png(filename = "plot2.png")

plot(hpc$Time, hpc$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)",
     xlab = "")

dev.off()