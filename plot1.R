plot1 <- function{
        hist(sub$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power")
        dev.copy(png, file="plot1.png", width=480, height=480)
        dev.off()
}