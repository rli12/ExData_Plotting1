plot4 <- function{
        plot(sub$DateTime,sub$Global_active_power, type="l", xlab="", ylab="Global Active Power")
        plot(sub$DateTime,sub$Voltage, type="l", xlab="datetime", ylab="Voltage")

        ##Plot 3
        plot(sub$DateTime, sub$Sub_metering_1, type="l", ylab="Energy sub metering")
        lines(sub$DateTime,sub$Sub_metering_2,col="red")
        lines(sub$DateTime,sub$Sub_metering_3,col="blue")
        legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), lwd=c(1,1))
        
        ## Plot 4
        plot(sub$DateTime,sub$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
        dev.copy(png, file="plot4.png", width=480, height=480)
        dev.off()
}