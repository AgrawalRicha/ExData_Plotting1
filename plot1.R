source("Power_Data.R")
my.df<-loadData()

png(filename="plot1.png",width=480,height=480,bg="transparent",units='px')
hist(my.df$Global_active_power, main="Global Active Power",col="red", xlab="Global Active Power (kilowatts)")
dev.off()