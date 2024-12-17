#Let us use the built-in dataset air quality which has Daily air quality measurements in New York, May to September 1973.
#Develop R program to generate histogram by using appropriate arguments for the following statements.
#a) Assigning names, using the air quality data set.
#b) Change colors of the Histogram
#c) Remove Axis and Add labels to Histogram
#d) Change Axis limits of a Histogram
#e) Add Density curve to the histogram

airquality

#a
hist(airquality$Ozone,main="Histogram of Ozone level",xlab="Ozone level",ylab="Frequency")

#b
hist(airquality$Ozone,main="Histogram of Ozone level",xlab="Ozone level",ylab="Frequency",col="Blue",border = "Black")

#c
hist(airquality$Ozone,main="Histogram of Ozone level",xlab="Ozone level",ylab="Frequency",axes = FALSE)

#d
hist(airquality$Ozone,main="Histogram of Ozone level",xlab="Ozone level",ylab="Frequency",xlim=c(0,120),ylim=c(0,25))

#e
hist(airquality$Ozone,main="Histogram of Ozone level",xlab="Ozone level",ylab="Frequency",prob=TRUE)
curve(dnorm(x,mean=mean(airquality$Ozone,na.rm=TRUE),sd=sd(airquality$Ozone,na.rm=TRUE)),from=0,to=150,add=TRUE,col="red")
      
      