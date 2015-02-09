#!/usr/bin/Rscript

# This example shows a basic 'for' loop...

for (x in 1:10) {
	if (x==4) {
		next
	}
	print(x)
}
