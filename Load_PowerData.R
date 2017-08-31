## Download the file for power consumption data from below url and unzip it.


loadData <- function() 
{
	url<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
	download.file(url,destfile="exdata_data_household_power_consumption.zip")
	unzip("exdata_data_household_power_consumption.zip",exdir=".")

	## read the data from the downloaded text file

	out.df<-read.table("household_power_consumption.txt",sep=";",header=TRUE,stringsAsFactors=FALSE,na.strings="?")

	## Add a new column for POSIXlt Date-Time field which is combination of Date and Time column
	out.df$DateTime<-strptime(paste(out.df$Date, out.df$Time, sep= " "),"%d/%m/%Y %H:%M:%S")

	## extract the data for 01/02/2007 and 02/02/2007 dates only in a new df
	out.df$Date<-as.Date(out.df$Date,format="%d/%m/%Y")
	my.df<-out.df[(out.df$Date == "2007-02-01" | out.df$Date =="2007-02-02"),]
}