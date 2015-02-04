.PHONY: all
all:
	$(info tell me what to do)

.PHONY: clean
clean:
	find . -name ".RData" -or -name ".Rhistory" -exec rm {} \;
