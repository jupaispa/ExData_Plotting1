dtsw4 <- read.csv("household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE)
dtsw4$DateTime<-strptime(paste0(as.character(dtsw4$Date),' ', as.character(dtsw4$Time)), "%d/%m/%Y %H:%M:%S")
inicio<-which(dtsw4$DateTime==strptime("2007-02-01", "%Y-%m-%d"))
final<-which(dtsw4$DateTime==strptime("2007-02-02 23:59:00", "%Y-%m-%d %H:%M:%S"))
dtsw4_filter<-dtsw4[inicio:final,]
png(filename = 'Plot1.png', width = 480, height = 480, units = "px")
hist(as.numeric(dtsw4_filter$Global_active_power), main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.off()
