# The below is to create plots to be saved in png file as a 
# part of Exploratory Data Analysis week 1 assignment

library(data.table)

# Define input file name and classes to read the file
fileName<-'household_power_consumption.txt'
classes<-c("character" , "character" , "numeric" ,"numeric" ,
           "numeric" ,"numeric" ,"numeric" ,"numeric" ,"numeric" ) 

# Read the input file using read.table method
house<-read.table(fileName,colClasses=classes,header=TRUE,sep=";",na="?")

#Convert input characters as Date for the Date and Time fields
house_df$DateTime <- paste(house_df$Date, house_df$Time)
house_df$DateTime<-as.POSIXct(strptime(house_df$DateTime,"%d/%m/%Y %H:%M:%S"))

#Create Plot 2

png('plot2.png',width = 480, height = 480)

plot(house_df$DateTime,house_df$Global_active_power,
     type="l",
     xlab=" ",
     ylab="Global Active Power(kilowatts)" )

dev.off()





