#Read in and tidy data.
source("load_data.R")

#Open graphics device, plot histogram, and close graphics device.
png(filename = "plot1.png")

hist(hpc$Global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Global Acitve Power (kilowatts)")

dev.off()