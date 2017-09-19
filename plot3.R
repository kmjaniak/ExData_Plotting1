png("plot3.png")
par(mar = c(4, 4, 4, 2))
with(feb, plot(Datetime, Sub_metering_1, type = "l",
               xlab = "",
               ylab = "Energy sub metering"))
with(feb, lines(Datetime, Sub_metering_2, col = "red"))
with(feb, lines(Datetime, Sub_metering_3, col = "blue"))
legend("topright", lty = 1, col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()