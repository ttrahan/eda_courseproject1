## recreate plot4 located at https://github.com/ttrahan/ExData_Plotting1/blob/master/figure/unnamed-chunk-5.png

# read data.  data will be stored to variable "CP1data"
source("loadCourseProject1data.R")


# send plots to png file
png("plot4.png", width=480, height=480)


# set format for four plots on page
par(mfcol=c(2,2))


# graph #1 ----------------------------------------------------------------
# generate line graph
x <- CP1data$DateTime
y <- CP1data$Global_active_power
plot(x, y, type="n", xlab="", ylab="Global Active Power") 
lines(x, y, type="s") 


# graph #2 ----------------------------------------------------------------
# bottom left
# generate multi-line graph with three series of data
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


# graph #3 ----------------------------------------------------------------
# generate line graph
x <- CP1data$DateTime
y <- CP1data$Voltage
plot(x, y, type="n", xlab="datetime", ylab="Voltage") 
lines(x, y, type="s") 


# graph #4 ----------------------------------------------------------------
# generate line graph
x <- CP1data$DateTime
y <- CP1data$Global_reactive_power
plot(x, y, type="n", xlab="datetime", ylab="Global_reactive_power") 
lines(x, y, type="s") 


# release active device
dev.off()
