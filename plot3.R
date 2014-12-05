dataProper<-read.table("household_power_consumption.txt",header=T, sep=';');
febData <- dataProper[dataProper$Date == '1/2/2007' | dataProper$Date == '2/2/2007',];
dates <- strptime(paste(febData$Date, febData$Time, sep=" "), format="%d/%m/%Y %T", tz="")
plot(dates,as.numeric(as.character(febData$Sub_metering_1)), type="n", ylab="Energy sub metering", xlab="");
lines(dates,as.numeric(as.character(febData$Sub_metering_1)), col="black");
lines(dates,as.numeric(as.character(febData$Sub_metering_2)), col="red");
lines(dates,as.numeric(as.character(febData$Sub_metering_3)), col="blue");
legend("topright",c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black","red", "blue"), cex=0.6,pt.cex = 0.6);
dev.copy(png, file="plot3.png",width=480,height=480);
dev.off();