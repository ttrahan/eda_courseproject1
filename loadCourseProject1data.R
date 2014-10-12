## function to load data for Exploratory Data Analysis - Course Project 1

## this code will work entirely within the working directory
## be sure to set the working directory before executing 

library(data.table)
sourcezipfile <- "household_power_consumption.zip"
sourcefile <- "household_power_consumption.txt"

## download the data file from the source location 
## read and store the data to a data.table
## do not re-download if the data file already exists in the working directory
if(!file.exists(sourcefile)) {
        fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
        fileLoc <- paste(getwd(),"/",sourcezipfile, sep="")
        download.file(fileUrl,fileLoc)
        
        # unzip the source file
        unzip(sourcezipfile)        
}

# set the column classes
colclasses <- c("character", "character", "numeric", "numeric","numeric","numeric", 
                "numeric","numeric","numeric")

## only read the data for two days, starting from Feb 1, 2007 (note file format 
## is d/m/yyyy).  File contains one row for each minute in the day.
startrow <- c("1/2/2007")
numdaystoread <- 2
readrows <- 24*60*numdaystoread
CP1data <- fread(sourcefile, sep="auto", header=FALSE, 
                    colClasses = colclasses, skip = startrow, nrows = readrows)
setnames(CP1data,names(fread(sourcefile, sep="auto", header=TRUE, 
                             colClasses=colclasses, nrows=0)))

#create a new, single POSIXct field from the Date and Time fields
CP1data$DateTime <- as.POSIXct(paste(CP1data$Date, CP1data$Time), 
                               format="%d/%m/%Y %H:%M:%S")