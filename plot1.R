#Read, name and subset
Consump <- read.table("household_power_consumption.txt",skip=1,sep=";")
names(Consump) <- c("Date","Time","Global_active_power",
                    "Global_reactive_power","Voltage",
                    "Global_intensity","Sub_metering_1"
                    ,"Sub_metering_2","Sub_metering_3")
Consump2 <- subset(Consump,Consump$Date=="1/2/2007" | Consump$Date =="2/2/2007")

#Plot1
png("plot1.png", width=480, height=480)
hist(as.numeric(Consump2$Global_active_power),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
dev.off()