#!/usr/bin/Rscript

# This is a basic example of statistics with R.
#
# References:
# http://www.r-tutor.com/elementary-statistics/numerical-measures

waitForInput <- function() {
	cat("Press [enter] to continue...")
	invisible(readLines('stdin', n=1, warn=FALSE))
}

x=c(6, 7, 8, 9)
cat('mean', mean(x), "\n")
cat('var', var(x), "\n")
cat('quantile', quantile(x), "\n")
cat('percentile', quantile(x, c(.32, .57, .98)), "\n")
cat('min', min(x), "\n")
cat('max', max(x), "\n")
cat('range', range(x), "\n")
cat('IQR', IQR(x), "\n")
cat('median', median(x), "\n")
cat('sd', sd(x), "\n")
X11()
boxplot(x, horizontal=TRUE)
waitForInput()
