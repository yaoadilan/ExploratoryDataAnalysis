# plot 4

HPC <- read.table("Exploratory Data Analysis/household_power_consumption.txt", sep=";",header=TRUE,stringsAsFactors=F)
HPC$Date <- as.Date(HPC$Date, "%d/%m/%Y")
HPC_sub <- subset(HPC, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))
png(file="plot4.png",width = 480, height = 480)
par(mfrow=c(2,2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))
plot(HPC_sub$DateTime, HPC_sub$Global_active_power, type="l", xlab="",
     ylab="Global Active Power" )
# lines(HPC_sub$DateTime, HPC_sub$Global_active_power)

plot(HPC_sub$DateTime, HPC_sub$Voltage, type="l", xlab="datetime",
     ylab="Voltage" )

plot(HPC_sub$DateTime, HPC_sub$Sub_metering_1, ylab="Energy sub metering", type="n")
lines(HPC_sub$DateTime, HPC_sub$Sub_metering_1, col="black")
lines(HPC_sub$DateTime, HPC_sub$Sub_metering_2, col="red")
lines(HPC_sub$DateTime, HPC_sub$Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col=c("black","red","blue"), lty=1)

plot(HPC_sub$DateTime, HPC_sub$Global_reactive_power, type="l", xlab="datetime",
     ylab="Global_rective_power" )
dev.off()

