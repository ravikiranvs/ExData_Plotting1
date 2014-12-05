dataProper<-read.table("household_power_consumption.txt",header=T, sep=';');
febData <- dataProper[dataProper$Date == '1/2/2007' | dataProper$Date == '2/2/2007',];
hist(as.numeric(as.character(febData$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power (kilowatt)");
dev.copy(png, file="plot1.png",width=480,height=480);
dev.off();