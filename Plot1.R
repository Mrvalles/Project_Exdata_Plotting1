#Getting the data. it's necessary download in your working directory the file Get_data_function.R
source("Get_data_function.R")
if (!exists("consumption_data_def")){
consumption_data_def<-read()
}
#Graphic 1: Histogram
png(file="Plot1.png",width=480,height=480)
hist(consumption_data_def$Global_active_power,col='red',main='Global Active Power',xlab='Global Active Power (Kilowatts)',ylim=c(0,1200))
dev.off()