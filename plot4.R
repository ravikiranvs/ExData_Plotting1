dataProper<-read.table("household_power_consumption.txt",header=T, sep=';');
febData <- dataProper[dataProper$Date == '1/2/2007' | dataProper$Date == '2/2/2007',];
par(mfrow=c(2,2))
with(febData,{
  dates <- strptime(paste(febData$Date, febData$Time, sep=" "), format="%d/%m/%Y %T", tz="");
  
  plot(dates,as.numeric(as.character(febData$Global_active_power)), type="n", ylab="Global Active Power", xlab="");
  lines(dates,as.numeric(as.character(febData$Global_active_power)));
  
  plot(dates,as.numeric(as.character(febData$Voltage)), type="n", ylab="Voltage", xlab="datetime");
  lines(dates,as.numeric(as.character(febData$Voltage)));
  
  plot(dates,as.numeric(as.character(febData$Sub_metering_1)), type="n", ylab="Energy Sub Metering", xlab="");
  lines(dates,as.numeric(as.character(febData$Sub_metering_1)), col="black");
  lines(dates,as.numeric(as.character(febData$Sub_metering_2)), col="red");
  lines(dates,as.numeric(as.character(febData$Sub_metering_3)), col="blue");
  legend("topright",c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black","red", "blue"), cex=0.1,bty="n");
  
  plot(dates,as.numeric(as.character(febData$Global_reactive_power)), type="n", ylab="Global_reactive_power", xlab="datetime");
  lines(dates,as.numeric(as.character(febData$Global_reactive_power)));
})



dev.copy(png, file="plot4.png",width=480,height=480);
dev.off();