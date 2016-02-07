mydata <-read.table("household_power_consumption.txt",sep=";", header=TRUE)
newdata <- subset(mydata,Date=="1/2/2007" | Date=="2/2/2007" )
png(filename = "plot1.png", width = 480, height = 480,units = "px", pointsize = 12, bg = "white", res = NA, restoreConsole = TRUE)

hist(as.numeric(newdata$Global_active_power)/1000,main="Global Active Power",xlab = "Global Active Power (Kilowatts)",col ="Red" )

dev.off()
