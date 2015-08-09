
setwd('C:/Users/984Olivier/Documents/Coursera/Exploratory Data Analysis')
data <- read.delim(file='household_power_consumption.txt',sep=';',
                   header=TRUE,stringsAsFactors = FALSE)
plot <- subset(data,Date=='1/2/2007' | Date=='2/2/2007')
plot$datetime <- strptime(paste(plot$Date, plot$Time), "%d/%m/%Y %H:%M:%S")
png("plot3.png", width=480, height=480)
plot(plot$datetime,as.numeric(plot$Sub_metering_1),
     xlab='',
     ylab='Energy Submetering',
     type='l') 
lines(plot$datetime, as.numeric(plot$Sub_metering_2), type="l", col="red")
lines(plot$datetime, as.numeric(plot$Sub_metering_3), type="l", col="blue")
legend('topright',
       c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),
       col=c('black','red','blue'),
       lty=1,
       lwd=1)
dev.off()