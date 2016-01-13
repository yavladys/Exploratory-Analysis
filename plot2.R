#Plot 2

par(mfrow = c(1,1), pin = c(4.8,4.8), cex = 0.9)

plot(Y$Date_and_Time, Y$Global_active_power, type = 'l', ylab = '', xlab = '', cex.axis = 0.8)
title(ylab = 'Global Active Power (kilowatts)')

dev.copy(png, file = 'plot2.png')
dev.off()
#-----