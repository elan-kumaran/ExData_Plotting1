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

#Create Plot 4 png file

png('plot4.png',width = 480, height = 480)

#Set 2 rows and 2 columns for the 4 plots to be printed
par(mfrow=c(2,2))


plot(house_df$DateTime,house_df$Global_active_power,
     type="l",
     xlab=" ",
     ylab="Global Active Power(kilowatts)" )


plot(house_df$DateTime,house_df$Voltage,
     type="l",
     xlab="datetime",
     ylab="Voltage")

plot(house_df$DateTime,house_df$Sub_metering_1,
     type="l",
     xlab= " ",
     ylab = "Energy Sub Metering",
     col="black")
lines(house_df$DateTime,house_df$Sub_metering_2,type="l",col="red")
lines(house_df$DateTime,house_df$Sub_metering_3,type="l",col="blue")
legend("topright",
       col=c("black","red","blue"),
       c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1),
       lwd=c(1,1,1))

plot(house_df$DateTime,house_df$Global_reactive_power,
     type="l",
     xlab=" ",
     ylab="Global Active Power(kilowatts)" )


dev.off()




