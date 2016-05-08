# plot 3

HPC <- read.table("Exploratory Data Analysis/household_power_consumption.txt", sep=";",header=TRUE,stringsAsFactors=F)
HPC$Date <- as.Date(HPC$Date, "%d/%m/%Y")
HPC_sub <- subset(HPC, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))
png(file="plot3.png", width = 480, height = 480)
plot(HPC_sub$DateTime, HPC_sub$Sub_metering_1, ylab="Energy sub metering", type="n")
lines(HPC_sub$DateTime, HPC_sub$Sub_metering_1, col="black")
lines(HPC_sub$DateTime, HPC_sub$Sub_metering_2, col="red")
lines(HPC_sub$DateTime, HPC_sub$Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col=c("black","red","blue"), lty=1)
dev.off()

