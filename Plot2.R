## Plot 2 : 

Energy_dates$DateTime <- strptime(paste(as.character(Energy_dates$Date), Energy_dates$Time), format = "%Y-%m-%d %H:%M:%S")
plot(Energy_dates$DateTime, as.numeric(as.character(Energy_dates$Global_active_power)), type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.copy(png, file ="plot2.png", width = 480, height = 480) 
dev.off()