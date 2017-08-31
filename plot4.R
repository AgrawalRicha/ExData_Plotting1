source("Power_Data.R")
my.df<-loadData()

png("plot4.png",width=480,height=480,unit='px',bg="transparent")

par(mfrow=c(2,2))

with(my.df,plot(DateTime,Global_active_power,type="l",ylab="Global Active Power (killowatts)",xlab=""))
plot(my.df$DateTime, my.df$Voltage, type="l",xlab="datetime",ylab="Voltage")
with(my.df,plot(DateTime,Sub_metering_1,type="l",ylab="Energy sub metering",xlab=""))
with(my.df,lines(DateTime,Sub_metering_2,col="red"))
with(my.df,lines(DateTime,Sub_metering_3,col="blue"))
legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty="solid")

plot(my.df$DateTime, my.df$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")

dev.off()