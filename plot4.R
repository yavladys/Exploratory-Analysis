#Plot 4

par(mfrow = c(2,2), mar = c(5,4,3,3))

plot(Y$Date_and_Time, Y$Global_active_power, type = 'l', ylab = 'Global Active Power', xlab = '', cex.axis = 0.8)

plot(Y$Date_and_Time,Y$Voltage, type = 'l', ylab = 'Voltage', xlab = 'datetime', cex.axis = 0.8, yaxt='n')
axis(side = 2, at = seq(234, 246, by = 4))

plot(Y[,10],Y[,7],type = 'l', xlab = '', ylab = 'Energy sub metering', cex.axis = 0.8)
points(Y[,10],Y[,8], type = 'l', col = 'red')
points(Y[,10],Y[,9], type = 'l', col = 'blue')
legend('topright', lty = 1 , col = c('black', 'red', 'blue'),
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       cex = 0.8, border = 'white', bty = 'n')

plot(Y$Date_and_Time,Y$Global_reactive_power, type = 'l', ylab = 'Global_reactive_power', xlab = 'datetime', cex.axis = 0.8)

dev.copy(png, file = 'plot4.png')
dev.off()

#------