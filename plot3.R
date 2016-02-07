mydata <-read.table("household_power_consumption.txt",sep=";", header=TRUE)
newdata <- subset(mydata,Date=="1/2/2007" | Date=="2/2/2007" )
png(filename = "plot3.png", width = 480, height = 480,units = "px", pointsize = 12, bg = "white", res = NA, restoreConsole = TRUE)

plot(newdata$DateTime2,newdata$Sub_metering_1,type="l",xlab = "",ylab ="Energy submetering")

lines(newdata$DateTime2,newdata$Sub_metering_2,type="l")

lines(newdata$DateTime2,newdata$Sub_metering_3,type="l")

legend('topright',legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1)

dev.off()
