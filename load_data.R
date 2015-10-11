library(data.table)
hpc <- fread("./household_power_consumption.txt", header = TRUE, sep = ";", 
                  na.strings = "?", colClasses = c(rep("character", 2), rep("numeric", 7)))

hpc <- hpc[hpc$Date == "1/2/2007" | hpc$Date == "2/2/2007",]

hpc <- as.data.frame(hpc)

hpc$Date <- as.Date(hpc$Date, format = "%d/%m/%Y")

hpc$Time <- strptime(paste(hpc$Date, hpc$Time), format = "%Y-%m-%d %H:%M:%S")