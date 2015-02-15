#!/usr/bin/Rscript

v <- c("vioplot", "aplpack")

for (x in v) {
	# if(!is.element(x, .packages()) {
	if (!require(x, character.only = TRUE)) {
		install.packages(x, repos="http://cran.rstudio.com/")
		library(x, character.only = TRUE)
	}
}
