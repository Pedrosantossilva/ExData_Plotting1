#Read, name and subset
Consump <- read.table("household_power_consumption.txt",skip=1,sep=";")
names(Consump) <- c("Date","Time","Global_active_power",
                    "Global_reactive_power","Voltage",
                    "Global_intensity","Sub_metering_1"
                    ,"Sub_metering_2","Sub_metering_3")
Consump2 <- subset(Consump,Consump$Date=="1/2/2007" | Consump$Date =="2/2/2007")

#Plot3
date_time <- strptime(paste(Consump2$Date, Consump2$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(Consump2$Global_active_power)
Sub1 <- as.numeric(Consump2$Sub_metering_1)
Sub2 <- as.numeric(Consump2$Sub_metering_2)
Sub3 <- as.numeric(Consump2$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(date_time, sub1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, sub2, type="l", col="red")
lines(datetime, sub3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()