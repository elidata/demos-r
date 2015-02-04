#!/usr/bin/Rscript

# This example shows some limitations of the floating point implementation
# that R is built upon.
# Conclusions: never compare floating point values using '=='!

.1 == .3 / 3
print(.1, digits=20)
print(.3 / 3, digits=20)

all.equal(.1, .3 / 3)

seq(0, 1, by=.1) == .3

unique(c(.3, .4 - .1, .5 - .2, .6 - .3, .7 - .4))
