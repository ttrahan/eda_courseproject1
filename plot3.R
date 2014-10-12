## recreate plot3 located at https://github.com/ttrahan/ExData_Plotting1/blob/master/figure/unnamed-chunk-4.png

# read data.  data will be stored to variable "CP1data"
source("loadCourseProject1data.R")

# generate multi-line graph with three series of data
png("plot3.png", width=480, height=480)
x <- CP1data$DateTime
y1 <- CP1data$Sub_metering_1
y2 <- CP1data$Sub_metering_2
y3 <- CP1data$Sub_metering_3
plot(x, y1, type="n", xlab="", ylab="Energy sub metering") 
lines(x, y1, type="s", col="black") 
lines(x, y2, type="s", col="red") 
lines(x, y3, type="s", col="blue")

# add legend
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=1, lwd=1, col=c("black", "red", "blue"))

# release active device
dev.off()
