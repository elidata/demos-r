#!/usr/bin/Rscript

# These are samples of bar plots in R
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

# simple bar plot
counts <- c(4,5,6)
barplot(counts, main="Car Distribution", xlab="Number of Gears") 
waitForInput()

# simple horizontal bar plot with added labels
barplot(counts, main="Car Distribution", horiz=TRUE, names.arg=c("3 Gears", "4 Gears", "5 Gears"))
waitForInput()

# Stacked Bar Plot
counts <- table(c(5,6,7), c(2,3,4)) 
barplot(counts, main="Car Distribution by Gears and VS", xlab="Number of Gears", col=c("darkblue","red"))
waitForInput()
