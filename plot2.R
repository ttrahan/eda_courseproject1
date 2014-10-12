## recreate plot2 located at https://github.com/ttrahan/ExData_Plotting1/blob/master/figure/unnamed-chunk-3.png

# read data.  data will be stored to variable "CP1data"
source("loadCourseProject1data.R")

# generate line graph
png("plot2.png", width=480, height=480)
x <- CP1data$DateTime
y <- CP1data$Global_active_power
plot(x, y, type="n", xlab="", ylab="Global Active Power (kilowatts)") 
lines(x, y, type="s") 

# release active device
dev.off()
