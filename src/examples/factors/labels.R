#!/usr/bin/Rscript

# Factor with labels

# auto labels (labels will be 'letter1', 'letter2', etc)
f <- factor(letters[1:5], labels = "letter")
print(f)

# self labeling
f <- factor(letters[1:5], labels = c("la", "lb", "lc", "ld", "le"))
print(f)
