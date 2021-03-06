#Getting full data
 data<-read.table("household_power_consumption.txt",header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
 
#subsetting the data
 subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power)
#Plot2
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

#Saving as png file
dev.copy(png,file="plot2.png", width=480, height=480)
dev.off()