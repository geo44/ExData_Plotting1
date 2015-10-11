#This script will be used to read in the data and tidy it.
#Load data.table package, read in data changing ? to NA and setting column classes.
library(data.table)
hpc <- fread("./household_power_consumption.txt", header = TRUE, sep = ";", 
                  na.strings = "?", colClasses = c(rep("character", 2), rep("numeric", 7)))

#Subset data to only include data from Feb. 1 and 2, 2007.
hpc <- hpc[hpc$Date == "1/2/2007" | hpc$Date == "2/2/2007",]

#Change data table to data frame to be able to use strptime.
hpc <- as.data.frame(hpc)

#Format Date and Time columns and combine them into Time column of class Posixlt.
hpc$Date <- as.Date(hpc$Date, format = "%d/%m/%Y")
hpc$Time <- strptime(paste(hpc$Date, hpc$Time), format = "%Y-%m-%d %H:%M:%S")