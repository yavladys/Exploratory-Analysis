#Data Preparation
X <- read.table('household_power_consumption.txt', sep = ';', header = TRUE)
X$Date <- strptime(X$Date, format = '%d/%m/%Y', tz = 'UTC')
d1 <- strptime('01/02/2007', format = '%d/%m/%Y', tz = 'UTC')
d2 <- strptime('02/02/2007', format = '%d/%m/%Y', tz = 'UTC')
Y <- X[(X$Date >= d1) & (X$Date <= d2),]

Y[,3] <- as.numeric(as.character(Y[,3]))
Y[,4] <- as.numeric(as.character(Y[,4]))
Y[,5] <- as.numeric(as.character(Y[,5]))
Y[,7] <- as.numeric(as.character(Y[,7]))
Y[,8] <- as.numeric(as.character(Y[,8]))
Y[,9] <- as.numeric(as.character(Y[,9]))

Y$Date_and_Time <- as.POSIXlt(paste(as.character(Y$Date), 
                                    as.character(Y$Time)))
#---------

#Plot 1

par(mfrow = c(1,1), pin = c(4.8,4.8), cex.main = 1, cex = 0.9)

hist(Y$Global_active_power, 
     col = 'red', 
     main = '',
     ylab = 'Frequency',
     xlab = "Global Active Power (kilowatts)", cex.axis = 1)
title(main = 'Global Active Power')

dev.copy(png, file = 'plot1.png')
dev.off()

#-----
