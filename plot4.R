mydata <-read.table("household_power_consumption.txt",sep=";", header=TRUE)
newdata <- subset(mydata,Date=="1/2/2007" | Date=="2/2/2007" )
png(filename = "plot4.png", width = 480, height = 480,units = "px", pointsize = 12, bg = "white", res = NA, restoreConsole = TRUE)

par(mfrow=c(2,2))

plot (newdata$DateTime2,as.numeric(newdata$Global_active_power)/1000,type="l",xlab = "",ylab ="Global Active Power (Kilowatts")

plot (newdata$DateTime2,newdata$Voltage,type="l",xlab = "datetime",ylab ="Voltage")

plot(newdata$DateTime2,newdata$Sub_metering_1,type="l",xlab = "",ylab ="Energy submetering")
lines(newdata$DateTime2,newdata$Sub_metering_2,type="l")
lines(newdata$DateTime2,newdata$Sub_metering_3,type="l")

plot(newdata$DateTime2,newdata$Global_reactive_power,type="l",xlab = "datetime",ylab ="Global_reactive_power")

dev.off()
