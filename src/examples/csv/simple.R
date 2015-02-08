#!/usr/bin/Rscript

# This is a simple example of reading a csv file in R.

heisenberg <- read.csv(file="simple.csv", head=TRUE)
#class(heisenberg)
#heisenberg
#summary(heisenberg)
mean(heisenberg$mass)
