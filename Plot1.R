## Plot 1 : Histogram of the Global_reactive_power 
hist(as.numeric(as.character(Energy_dates$Global_active_power)), xlab = "Global Active Power (kilowatts)", main = "Global Active Power", col= "Red")
dev.copy(png, file ="plot1.png", width = 480, height = 480) 
dev.off()

