#!/usr/bin/Rscript

# This example explores the logical type of R
#
# NOTES:
# - '&' and '|' are long evaluations while '&&' and '||' are short circuit ones.

# you can also use 'TRUE' if you like...:)
x <- FALSE
cat(x, "\n")
print(x)
typeof(x)
class(x)
mode(x)

# 'isTRUE' builtin function. 'isTRUE(x)' is actually 'identical(TRUE, x)'
cat("isTRUE(TRUE) is", isTRUE(TRUE), "\n")
cat("isTRUE(FALSE) is", isTRUE(FALSE), "\n")

# lets check coersion to 'TRUE'
cat("isTRUE(7) is", isTRUE(7), "\n")
cat("isTRUE(1) is", isTRUE(1), "\n")
cat("isTRUE(c(5, 6)) is", isTRUE(c(5, 6)), "\n")
cat("isTRUE(c(TRUE)) is", isTRUE(c(TRUE)), "\n")
cat("isTRUE(c(FALSE)) is", isTRUE(c(FALSE)), "\n")

# 'not' operation
cat(!TRUE, "\n")
cat(!FALSE, "\n")

# 'and' operation is by '&' and '&&'
cat("FALSE & FALSE is", FALSE & FALSE, "\n")
cat("FALSE & TRUE is", FALSE & TRUE, "\n")
cat("TRUE & TRUE is", TRUE & FALSE, "\n")
cat("TRUE & TRUE is", TRUE & TRUE, "\n")

cat("FALSE && FALSE is", FALSE && FALSE, "\n")
cat("FALSE && TRUE is", FALSE && TRUE, "\n")
cat("TRUE && TRUE is", TRUE && FALSE, "\n")
cat("TRUE && TRUE is", TRUE && TRUE, "\n")

# 'or' operation is by '|' and '||'
cat("FALSE | FALSE is", FALSE | FALSE, "\n")
cat("FALSE | TRUE is", FALSE | TRUE, "\n")
cat("TRUE | FALSE is", TRUE | FALSE, "\n")
cat("TRUE | TRUE is", TRUE | TRUE, "\n")

cat("FALSE || FALSE is", FALSE || FALSE, "\n")
cat("FALSE || TRUE is", FALSE || TRUE, "\n")
cat("TRUE || FALSE is", TRUE || FALSE, "\n")
cat("TRUE || TRUE is", TRUE || TRUE, "\n")

# 'xor' operation is via the builtin 'xor' function
cat("xor(FALSE, FALSE) is", xor(FALSE, FALSE), "\n")
cat("xor(FALSE, TRUE) is", xor(FALSE, TRUE), "\n")
cat("xor(TRUE, FALSE) is", xor(TRUE, FALSE), "\n")
cat("xor(TRUE, TRUE) is", xor(TRUE, TRUE), "\n")

# demo short circuit '&&' evaluation
returnFalse <- function() {
	cat('in returnFalse', "\n")
	FALSE
}
returnTrue <- function() {
	cat('in returnTrue', "\n")
	TRUE
}

# '&&'
cat("returnFalse() && returnFalse() is", returnFalse() && returnFalse(), "\n")
cat("returnFalse() && returnTrue() is", returnFalse() && returnTrue(), "\n")
cat("returnTrue() && returnFalse() is", returnTrue() && returnFalse(), "\n")
cat("returnTrue() && returnTrue() is", returnTrue() && returnTrue(), "\n")
# '&'
cat("returnFalse() & returnFalse() is", returnFalse() & returnFalse(), "\n")
cat("returnFalse() & returnTrue() is", returnFalse() & returnTrue(), "\n")
cat("returnTrue() & returnFalse() is", returnTrue() & returnFalse(), "\n")
cat("returnTrue() & returnTrue() is", returnTrue() & returnTrue(), "\n")
# '||'
cat("returnFalse() || returnFalse() is", returnFalse() || returnFalse(), "\n")
cat("returnFalse() || returnTrue() is", returnFalse() || returnTrue(), "\n")
cat("returnTrue() || returnFalse() is", returnTrue() || returnFalse(), "\n")
cat("returnTrue() || returnTrue() is", returnTrue() || returnTrue(), "\n")
# '|'
cat("returnFalse() | returnFalse() is", returnFalse() | returnFalse(), "\n")
cat("returnFalse() | returnTrue() is", returnFalse() | returnTrue(), "\n")
cat("returnTrue() | returnFalse() is", returnTrue() | returnFalse(), "\n")
cat("returnTrue() | returnTrue() is", returnTrue() | returnTrue(), "\n")
