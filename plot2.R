
setwd('C:/Users/984Olivier/Documents/Coursera/Exploratory Data Analysis')
data <- read.delim(file='household_power_consumption.txt',sep=';',
                   header=TRUE,stringsAsFactors = FALSE)
plot <- subset(data,Date=='1/2/2007' | Date=='2/2/2007')
plot$datetime <- strptime(paste(plot$Date, plot$Time), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480)
plot(plot$datetime,as.numeric(plot$Global_active_power),
     xlab='',
     ylab='Global Active Power (kilowatts)',
     type='l')     
dev.off()