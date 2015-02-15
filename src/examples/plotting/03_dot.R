#!/usr/bin/Rscript

# Dot plots in R
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

# Simple Dotplot
dotchart(mtcars$mpg,labels=row.names(mtcars),cex=.7, main="Gas Milage for Car Models", xlab="Miles Per Gallon")
waitForInput()

# Dotplot: Grouped Sorted and Colored
# Sort by mpg, group and color by cylinder
x <- mtcars[order(mtcars$mpg),] # sort by mpg
x$cyl <- factor(x$cyl) # it must be a factor
x$color[x$cyl==4] <- "red"
x$color[x$cyl==6] <- "blue"
x$color[x$cyl==8] <- "darkgreen"
dotchart(x$mpg,labels=row.names(x),cex=.7,groups= x$cyl, main="Gas Milage for Car Models\ngrouped by cylinder", xlab="Miles Per Gallon", gcolor="black", color=x$color)
waitForInput()
