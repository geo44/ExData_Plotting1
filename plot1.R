source("load_data.R")

png(filename = "plot1.png")

hist(hpc$Global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Global Acitve Power (kilowatts)")

dev.off()