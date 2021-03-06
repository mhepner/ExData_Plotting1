datafile <- "./data/household_power_consumption.txt" 
data <- read.table(datafile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".") 
subset <- data[data$Date %in% c("1/2/2007","2/2/2007") ,] 

globalactive <- as.numeric(subset$Global_active_power) 
png("plot1.png", width=480, height=480) 
hist(globalactive, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)") 
dev.off() 