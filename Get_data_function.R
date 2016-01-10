#Function that gets and sets format to dataset. IT must be downloaded in the working directory.
read<-function(folder="./data",namefile="household_power_consumption.txt"){
location<-paste(folder,"/",namefile,sep="")
consumption_data<-read.table(location,header=TRUE,sep=";",stringsAsFactors=FALSE,colClasses = c(rep("character",2),rep("numeric",7)), na.strings = "?")
#Creating de date/time format
consumption_data$Date_new<-paste(consumption_data$Date,consumption_data$Time,sep=" ")
consumption_data$Date_new<-strptime(consumption_data$Date_new, format="%d/%m/%Y %H:%M:%S")
#Subsetting
consumption_data<-consumption_data[!is.na(consumption_data$Date_new),]
start_date<-strptime('01/02/2007 00:00:00', format="%d/%m/%Y %H:%M:%S")
end_date<-strptime('03/02/2007 00:00:00', format="%d/%m/%Y %H:%M:%S")
#Final dataset
consumption_data_def<-consumption_data[consumption_data$Date_new<=end_date & consumption_data$Date_new>=start_date,]
return(consumption_data_def)
}
