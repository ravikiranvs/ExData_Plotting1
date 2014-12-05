dataProper<-read.table("household_power_consumption.txt",header=T, sep=';');
febData <- dataProper[dataProper$Date == '1/2/2007' | dataProper$Date == '2/2/2007',];
dates <- strptime(paste(febData$Date, febData$Time, sep=" "), format="%d/%m/%Y %T", tz="")
plot(dates,as.numeric(as.character(febData$Global_active_power)), type="n", ylab="Global Active Power (kilowatt)", xlab="");
lines(dates,as.numeric(as.character(febData$Global_active_power)));
dev.copy(png, file="plot2.png",width=480,height=480);
dev.off();