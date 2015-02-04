#!/usr/bin/Rscript

# This example shows that order does not matter for named arguments
# Lets take for example the 'runif' function. It receives one positional
# argument and two named arguments: 'min' and 'max'
# there are actually 11 ways of calling this function...:)

# one way of calling it. min and max both get default values (0 and 1 respectively).
a <- runif(3)
print(a)

# second way of calling it. min gets default value 0. We determine max.
a <- runif(3, max=7)
print(a)

# third way of calling it. min gets default value 0. We determine max.
a <- runif(max=7, 3)
print(a)

# fourth way of calling it. max gets default value 1. We determine min.
a <- runif(3, min=-1)
print(a)

# fifth way of calling it. max gets default value 1. We determine min.
a <- runif(min=-1, 3)
print(a)

# sixth way of calling it. We determine both min and max.
a <- runif(3, min=2, max=4)
print(a)

# seventh way of calling it. We determine both min and max.
a <- runif(min=2, 3, max=4)
print(a)

# eigth way of calling it. We determine both min and max.
a <- runif(min=2, max=4, 3)
print(a)

# ninth way of calling it. We determine both min and max.
a <- runif(3, max=4, min=2)
print(a)

# 10'th way of calling it. We determine both min and max.
a <- runif(max=4, 3, min=2)
print(a)

# 11'th way of calling it. We determine both min and max.
a <- runif(max=4, min=2, 3)
print(a)
