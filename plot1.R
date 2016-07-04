
## load data and read a subset using the dates 2007-02-01 and 2007-02-02

dataFile <- "./household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
plot1 <- as.numeric(subSetData$Global_active_power)

#output png
png("plot1.png", width=480, height=480)

hist(plot1, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
