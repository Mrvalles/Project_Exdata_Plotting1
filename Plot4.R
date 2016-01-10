#Getting the data. it's necessary download the file Get_data_function.R
source("Get_data_function.R")
if (!exists("consumption_data_def")){
  consumption_data_def<-read()
}
#Graphic 3: Multiples graphics
png(file="Plot4.png",width=480,height=480)
par(mfrow = c(2, 2))
plot(consumption_data_def$Date_new,consumption_data_def$Global_active_power,type='l',xlab='',ylab='Global Active Power (Kilowatts)')
plot(consumption_data_def$Date_new,consumption_data_def$Voltage,type='l',xlab='',ylab='Voltage')
plot(consumption_data_def$Date_new,consumption_data_def$Sub_metering_1,type='l',xlab='',ylab='Energy sub metering',col='black')
points(consumption_data_def$Date_new,consumption_data_def$Sub_metering_2,type='l',col='red')
points(consumption_data_def$Date_new,consumption_data_def$Sub_metering_3,type='l',col='blue')
legend("topright",pch='___',col=c(1,2,3),legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))
plot(consumption_data_def$Date_new,consumption_data_def$Global_reactive_power,type='l',xlab='',ylab='Global Active Power (Kilowatts)')
dev.off() 
