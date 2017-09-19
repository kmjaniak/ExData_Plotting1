png("plot2.png")
plot(feb$Datetime, feb$Global_active_power, type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)" )
dev.off()