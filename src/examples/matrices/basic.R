#!/usr/bin/Rscript

# Matrices are combinations of vectors of the same length and same data type
# We can have numeric matrices, character matrices, or logical matrices
# Can't mix types

cat("Empty matrix is 1x1 and has one element which is NA\n")
mymat <- matrix()
cat(mymat, "\n")
print(mymat)
typeof(mymat)
class(mymat)
mode(mymat)

cat("Only with rows\n")
mymat <- matrix(nrow=6)
mymat

cat("Only with cols\n")
mymat <- matrix(ncol=3)
mymat

cat("With cols and rows\n")
mymat <- matrix(ncol=3, nrow=6)
mymat

cat("With cols and rows and data\n")
mymat <- matrix(1:18, ncol=3, nrow=6)
mymat

cat("With cols and rows and too much data\n")
cat("Note that the matrix only takes the prefix it needs\n")
cat("A warning is issued\n")
mymat <- matrix(1:20, ncol=3, nrow=6)
mymat

cat("With cols and rows and too little data\n")
cat("Note that the matrix only repeats the data\n")
cat("A warning is issued\n")
mymat <- matrix(1:10, ncol=3, nrow=6)
mymat

cat("With cols,rows,data and names\n")
mymat <- matrix(1:18, ncol=3, nrow=6)
rownames(mymat) <- c("apple", "orange", "banana", "pear", "kiwi", "lemon")
colnames(mymat) <- c("sweet", "sour", "minty")
mymat

cat("Extracting data from matrices\n")
mymat[2]

cat("Extracting dimensions from matrices\n")
dim(mymat)
dim(mymat)[1]
dim(mymat)[2]

cat("Turn matrix into a data frame\n")
mydf <- as.data.frame(mymat)
mydf
print(mydf)
typeof(mydf)
class(mydf)
mode(mydf)
summary(mydf)
