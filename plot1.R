
setwd('C:/Users/984Olivier/Documents/Coursera/Exploratory Data Analysis')
data <- read.delim(file='household_power_consumption.txt',sep=';',
                   header=TRUE,stringsAsFactors = FALSE)
plot <- subset(data,Date=='1/2/2007' | Date=='2/2/2007')
png("plot1.png", width=480, height=480)
hist(as.numeric(plot$Global_active_power),
     col='Red',
     main='Global Active Power',
     xlab='Global Active Power (kilowatts)',
     ylab='Frequency')
dev.off()




