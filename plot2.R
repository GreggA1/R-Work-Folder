mydata <-read.table("household_power_consumption.txt",sep=";", header=TRUE)
newdata <- subset(mydata,Date=="1/2/2007" | Date=="2/2/2007" )
##Constructing datetime
newdata$DateTime <- paste(newdata$Date, newdata$Time) ##concatenates the strings
newdata$DateTime2 <- as.POSIXct(strptime(newdata$DateTime, "%d/%m/%Y %H:%M:%S")) ##converts the concatenated string into a datetime

png(filename = "plot2.png", width = 480, height = 480,units = "px", pointsize = 12, bg = "white", res = NA, restoreConsole = TRUE)

plot (newdata$DateTime2,as.numeric(newdata$Global_active_power)/1000,type="l",xlab = "",ylab ="Global Active Power (Kilowatts")

dev.off()
