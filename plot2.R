#Read, name and subset
Consump <- read.table("household_power_consumption.txt",skip=1,sep=";")
names(Consump) <- c("Date","Time","Global_active_power",
                    "Global_reactive_power","Voltage",
                    "Global_intensity","Sub_metering_1"
                    ,"Sub_metering_2","Sub_metering_3")
Consump2 <- subset(Consump,Consump$Date=="1/2/2007" | Consump$Date =="2/2/2007")

#Plot2
date_time <- strptime(paste(Consump2$Date, Consump2$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(Consump2$Global_active_power)
png("plot2.png", width=480, height=480)
plot(date_time, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()