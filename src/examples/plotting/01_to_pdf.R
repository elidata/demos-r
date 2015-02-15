#!/usr/bin/Rscript

# Plotting in R to a pdf file
#
# NOTES:
# - mtcars is a global variable available in R
#
# References:
# http://www.statmethods.net/graphs/bar.html

# This means that all output will go to '/tmp/output.pdf'
pdf("/tmp/output.pdf")

# lets plot something
plot(mtcars$wt, mtcars$mpg)
abline(lm(mtcars$mpg~mtcars$wt))
title("Regression of MPG on Weight")

# go do something with '/tmp/output.pdf'
