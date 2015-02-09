#!/usr/bin/Rscript

# This is a simple example of throwing an exception in R.
# The exception in this case is NULL. This is not good, you should really throw
# the reason for why you stop the script.
#
# References:
# help(tryCatch)

for (i in 1:100) {
	print(i)
	if (i==3) {
		stop()
		# stop(NULL)
		# stop("this is the reason")
	}
}
