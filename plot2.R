#Getting the data. it's necessary download in your working directory the file Get_data_function.R
source("Get_data_function.R")
if (!exists("consumption_data_def")){
  consumption_data_def<-read()
}
#Graphic 2: Line graphic. The abbreviation of days are in Spanish.
png(file="Plot2.png",width=480,height=480)
plot(consumption_data_def$Date_new,consumption_data_def$Global_active_power,type='l',xlab='',ylab='Global Active Power (Kilowatts)')
dev.off() 