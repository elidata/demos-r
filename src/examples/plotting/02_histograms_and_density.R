#!/usr/bin/Rscript

# Histogram plots in R
#
# NOTES:
# - mtcars is a global variable available in R
#
# References:
# http://www.statmethods.net/graphs/bar.html

waitForInput <- function() {
	cat("Press [enter] to continue...")
	invisible(readLines('stdin', n=1, warn=FALSE))
}

# first lets initialize the windowing system
# in windows you have to call 'windows()'
X11()

# Simple Histogram
hist(mtcars$mpg)
waitForInput()

# Colored Histogram with Different Number of Bins
hist(mtcars$mpg, breaks=12, col="red")
waitForInput()

# Add a Normal Curve (Thanks to Peter Dalgaard)
x <- mtcars$mpg
h<-hist(x, breaks=10, col="red", xlab="Miles Per Gallon", main="Histogram with Normal Curve")
xfit<-seq(min(x),max(x),length=40)
yfit<-dnorm(xfit,mean=mean(x),sd=sd(x))
yfit <- yfit*diff(h$mids[1:2])*length(x)
lines(xfit, yfit, col="blue", lwd=2)
waitForInput()

# Kernel Density Plot
d <- density(mtcars$mpg) # returns the density data
plot(d) # plots the results
waitForInput()

# Filled Density Plot
d <- density(mtcars$mpg)
plot(d, main="Kernel Density of Miles Per Gallon")
polygon(d, col="red", border="blue")
waitForInput()

# Compare MPG distributions for cars with
# 4,6, or 8 cylinders
library(sm)
attach(mtcars)

# create value labels
cyl.f <- factor(cyl, levels= c(4,6,8), labels = c("4 cylinder", "6 cylinder", "8 cylinder"))

# plot densities
sm.density.compare(mpg, cyl, xlab="Miles Per Gallon")
title(main="MPG Distribution by Car Cylinders")

# add legend via mouse click
colfill<-c(2:(2+length(levels(cyl.f))))
legend(locator(1), levels(cyl.f), fill=colfill)
waitForInput()
