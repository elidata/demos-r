#!/usr/bin/Rscript

# This example shows multi-line comments in R
# There is no special syntax for multi-line comments in R
# we use tricks 
#
# References:
# http://stackoverflow.com/questions/4131338/is-it-possible-to-have-a-multi-line-comments-in-r

"This is a multi-line comment. Technically it is a long string
which spans several lines which no one does anything with.
The disadvantage of this comment is that it will be evaluated
and printed out as output of this script.
"

if (FALSE) {
	"Again we use a multi-line string as a multi-line comment.
	This is ok but because of the if(FALSE) above we may gain
	some performance improvement by not having this string
	evaluated at all and therefore not printed as output of our
	script - which is what we probably want."
}

print('Hello world!\n')
