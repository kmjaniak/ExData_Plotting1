png("plot4.png")

par(mfrow = c(2, 2), mar = c(6, 4, 2, 2))
with(feb, plot(Datetime, Global_active_power, type = "l", xlab = "",
               ylab = "Global Active Power"))

with(feb, plot(Datetime, Voltage, type = "l",
               xlab = "datetime"))

with(feb, plot(Datetime, Sub_metering_1, type = "l",
               xlab = "",
               ylab = "Energy sub metering"))
with(feb, lines(Datetime, Sub_metering_2, col = "red"))
with(feb, lines(Datetime, Sub_metering_3, col = "blue"))
legend("topright", box.lty = 0, lty = 1, col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))


with(feb, plot(Datetime, Global_reactive_power, type = "l",
               xlab = "datetime"))

dev.off()