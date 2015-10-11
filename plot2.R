source("load_data.R")

png(filename = "plot2.png")

plot(hpc$Time, hpc$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)",
     xlab = "")

dev.off()