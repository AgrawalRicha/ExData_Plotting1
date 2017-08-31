source("Power_Data.R")
my.df<-loadData()

png("plot3.png",width=480,height=480,unit='px',bg="transparent")
with(my.df,plot(DateTime,Sub_metering_1,type="l",ylab="Energy sub metering",xlab=""))
with(my.df,lines(DateTime,Sub_metering_2,col="red"))
with(my.df,lines(DateTime,Sub_metering_3,col="blue"))
legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty="solid")
dev.off()