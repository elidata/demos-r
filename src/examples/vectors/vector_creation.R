#!/usr/bin/Rscript

# This example shows what happens when you create a vector out of nothing

# this will create an error
#x[2]=7
#ls.str()

x <- NULL
x[5]=7
ls.str()
print(x[3])
