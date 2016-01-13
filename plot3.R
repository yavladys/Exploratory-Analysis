#Plot 3
par(mfrow = c(1,1), pin = c(4.8,4.8), cex = 0.9)

plot(Y[,10],Y[,7],type = 'l', xlab = '', ylab = '', cex.axis = 0.8)
points(Y[,10],Y[,8], type = 'l', col = 'red')
points(Y[,10],Y[,9], type = 'l', col = 'blue')
legend('topright', lty = 1 , col = c('black', 'red', 'blue'),
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       cex = 0.8)

title(ylab = 'Energy sub metering')

dev.copy(png, file = 'plot3.png')
dev.off()
#-----