#!/usr/bin/Rscript

# This example shows some limitations of the floating point implementation
# that R is built upon.
# Conclusions: never compare floating point values using '=='!

.1 == .3 / 3
print(.1, digits=20)
print(.3 / 3, digits=20)

all.equal(.1, .3 / 3)
