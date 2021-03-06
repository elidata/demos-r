#!/usr/bin/Rscript

# This is a solution to the exercise

d <- read.csv(file="smalldata.csv", head=TRUE)

# find out about the data
cat('number of rows in d is', nrow(d), '\n')
colnames(d)
unique(d$district)

# first question
# the comma is important
f=d[d['district']==19 | d['district']==12, ]
# check that f is indeed a data.frame
cat('class of f is', class(f), '\n')
cat('number of rows in f is', nrow(f), '\n')
summary(f)

# second question
g=f[f['mathSS']>f['readSS'], ]
cat('class of g is', class(g), '\n')
cat('number of rows in g is', nrow(g), '\n')
summary(g)

# third question
d19=d[d['district']==19 & d['mathSS']>d['readSS'], ]
d12=d[d['district']==12 & d['mathSS']>d['readSS'], ]
# - for descending
o19=order(-d19$mathSS)
o12=order(-d12$mathSS)
class(o19)
d19_sorted=d19[o19,]
d12_sorted=d12[o12,]
class(d19)
class(d12)
class(d19_sorted)
class(d12_sorted)
#print(d19_sorted[nrow(d19)-1,]$mathSS)
#print(d12_sorted[nrow(d12)-1,]$mathSS)
print(d19_sorted[2,]$mathSS)
print(d12_sorted[2,]$mathSS)
