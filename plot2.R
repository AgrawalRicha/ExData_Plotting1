source("Power_Data.R")
my.df<-loadData()

png("plot2.png",width=480,height=480,unit='px',bg="transparent")
with(my.df,plot(DateTime,Global_active_power,type="l",ylab="Global Active Power (killowatts)",xlab=""))
dev.off()
