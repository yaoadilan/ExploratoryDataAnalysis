HPC <- read.table("Exploratory Data Analysis/household_power_consumption.txt", sep=";",header=TRUE,stringsAsFactors=F)
HPC$Date <- as.Date(HPC$Date, "%d/%m/%Y")
HPC_sub <- subset(HPC, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))
png(file="plot1.png", width = 480, height = 480)
par(mfrow=c(1,1))
HPC_sub$Global_active_power <- as.numeric(HPC_sub$Global_active_power)
hist(as.numeric(as.character(HPC_sub$Global_active_power)), col="red", 
     main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
