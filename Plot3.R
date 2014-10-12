## Plot 3 

with(Energy_dates, plot(DateTime, as.numeric(as.character(Sub_metering_1)), type= "l", ylab = "Energy sub metering" , xlab = ""))
with(Energy_dates, lines(DateTime, as.numeric(as.character(Sub_metering_2)), col = "Red"))
with(Energy_dates, lines(DateTime, as.numeric(as.character(Sub_metering_3)), col = "Blue"))
legend("topright", lty = 1 , col = c("black","red" ,"blue"), legend = c( "Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
dev.copy(png, file ="plot3.png", width = 480, height = 480) 
dev.off()