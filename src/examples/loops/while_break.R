#!/usr/bin/Rscript

# This example shows a basic 'while' loop...

x=1
while(x <= 10) {
	if (x==4) {
		break
	}
	print(x)
	x <- x+1
}
