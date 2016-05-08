HPC <- read.table("Exploratory Data Analysis/household_power_consumption.txt", sep=";",header=TRUE,stringsAsFactors=F)
HPC$Date <- as.Date(HPC$Date, "%d/%m/%Y")
HPC_sub <- subset(HPC, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))
png(file="plot2.png",width = 480, height = 480)

DateTime <- as.POSIXct(paste(HPC_sub$Date, HPC_sub$Time), format="%Y-%m-%d %H:%M:%S")
Day <- weekdays(DateTime)
HPC_sub <- cbind(Day, DateTime, HPC_sub)

# set up the plot
plot(HPC_sub$DateTime, HPC_sub$Global_active_power, type="n", xlab="Day",
     ylab="Global Active Power (kilowatts)" )

lines(HPC_sub$DateTime, HPC_sub$Global_active_power)
dev.off()

