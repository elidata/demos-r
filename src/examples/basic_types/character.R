#!/usr/bin/Rscript

# This is a the "character" type in R.
#
# NOTES:
# - when R prints character types it is in double quotes.
# - you can either use double quotes or single quotes, they both produce the same type.
# - this affects the way escaping is done.
# - there are many more escape characters.
#
# References:
# http://stat.ethz.ch/R-manual/R-devel/library/base/html/Quotes.html

y <- "a string of characters"
is.character(y)

# double quotes for character type is fine
x <- "mark"
cat(x, "\n")
print(x)
typeof(x)
class(x)
mode(x)

# single quotes in double quotes are fine
x <- "mark's phone"
cat(x, "\n")
print(x)
typeof(x)
class(x)
mode(x)

# double quotes in double quotes need to be escaped
x <- "mark is reading \"A Brave New World\""
cat(x, "\n")
print(x)
typeof(x)
class(x)
mode(x)

# single quotes in double quotes are fine
x <- "mark is reading 'A Brave New World'"
cat(x, "\n")
print(x)
typeof(x)
class(x)
mode(x)

# single quotes for character type are fine
x <- 'mark'
cat(x, "\n")
print(x)
typeof(x)
class(x)
mode(x)

# single quote in single quote needs to be escaped
x <- 'mark\'s phone'
cat(x, "\n")
print(x)
typeof(x)
class(x)
mode(x)

# double quotes in single quotes is fine
x <- 'mark is reading "A Brave New World"'
cat(x, "\n")
print(x)
typeof(x)
class(x)
mode(x)

# single quotes in single quotes need to be escaped
x <- 'mark is reading \'A Brave New World\''
cat(x, "\n")
print(x)
typeof(x)
class(x)
mode(x)
