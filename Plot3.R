#Getting the data. it's necessary download in your working directory the file Get_data_function.R
source("Get_data_function.R")
if (!exists("consumption_data_def")){
  consumption_data_def<-read()
}
#Graphic 3: Line graphic. The abbreviation of days are in Spanish.
png(file="Plot3.png",width=480,height=480)
plot(consumption_data_def$Date_new,consumption_data_def$Sub_metering_1,type='l',xlab='',ylab='Energy sub metering',col='black')
points(consumption_data_def$Date_new,consumption_data_def$Sub_metering_2,type='l',col='red')
points(consumption_data_def$Date_new,consumption_data_def$Sub_metering_3,type='l',col='blue')
legend("topright",pch='___',col=c(1,2,3),cex=0.75,legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))
dev.off() 