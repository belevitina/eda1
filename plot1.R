https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

h_p_c <- file("household_power_consumption.txt")
h_p_cons <-read.table(text = grep("^[1,2]/2/2007",readLines(h_p_c),value=TRUE), sep = ';', col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), na.strings = '?')

png(filename = "./plot1.png", width = 504, height = 504, units = "px")
with(h_p_cons, hist(Global_active_power,xlab = "Global Active Power(kilowatts)",col = "red", main = "Global Active Power"))
dev.off()