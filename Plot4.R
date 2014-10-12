## Plot 4
par(mfcol = c(2,2))
plot(Energy_dates$DateTime, as.numeric(as.character(Energy_dates$Global_active_power)), type = "l", ylab = "Global Active Power", xlab = "")

with(Energy_dates, plot(DateTime, as.numeric(as.character(Sub_metering_1)), type= "l", ylab = "Energy sub metering" , xlab = ""))
with(Energy_dates, lines(DateTime, as.numeric(as.character(Sub_metering_2)), col = "Red"))
with(Energy_dates, lines(DateTime, as.numeric(as.character(Sub_metering_3)), col = "Blue"))
legend("topright", lty = 1 , col = c("black","red" ,"blue"), legend = c( "Sub_metering_1","Sub_metering_2", "Sub_metering_3"), bty = "n")

plot(Energy_dates$DateTime, as.numeric(as.character(Energy_dates$Voltage)), type = "l", ylab = "Voltage", xlab = "datetime")

plot(Energy_dates$DateTime, as.numeric(as.character(Energy_dates$Global_reactive_power)), type = "l", ylab = "Global_reactive_power", xlab = "datetime")

dev.copy(png, file ="plot4.png", width = 480, height = 480) 
dev.off()