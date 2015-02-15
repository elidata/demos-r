#!/usr/bin/Rscript

# This method of waiting for user input will work
# in a script (Rscript) well.

cat("Press [enter] to continue...")
invisible(readLines('stdin', n=1, warn=FALSE))
