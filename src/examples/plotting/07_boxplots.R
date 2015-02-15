#!/usr/bin/Rscript

# Examples of pie charting in R
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

# Boxplot of MPG by Car Cylinders
boxplot(mpg~cyl,data=mtcars, main="Car Milage Data", xlab="Number of Cylinders", ylab="Miles Per Gallon")
waitForInput()

# Notched Boxplot of Tooth Growth Against 2 Crossed Factors
# boxes colored for ease of interpretation
boxplot(len~supp*dose, data=ToothGrowth, notch=TRUE, col=(c("gold","darkgreen")), main="Tooth Growth", xlab="Suppliment and Dose")
waitForInput()

# Violin Plots
library(vioplot)
x1 <- mtcars$mpg[mtcars$cyl==4]
x2 <- mtcars$mpg[mtcars$cyl==6]
x3 <- mtcars$mpg[mtcars$cyl==8]
vioplot(x1, x2, x3, names=c("4 cyl", "6 cyl", "8 cyl"), col="gold")
title("Violin Plots of Miles Per Gallon")
waitForInput()

# Example of a Bagplot
library(aplpack)
attach(mtcars)
bagplot(wt,mpg, xlab="Car Weight", ylab="Miles Per Gallon", main="Bagplot Example")
waitForInput()
