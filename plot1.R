## recreate plot1 located at https://github.com/ttrahan/ExData_Plotting1/blob/master/figure/unnamed-chunk-2.png

# read data.  data will be stored to variable "CP1data"
source("loadCourseProject1data.R")

# generate histogram
png("plot1.png", width=480, height=480)
hist(CP1data$Global_active_power, main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     col="red")

# release active device
dev.off()
