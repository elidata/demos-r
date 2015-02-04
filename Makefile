.PHONY: all
all:
	$(info tell me what to do)

.PHONY: sloccount
sloccount:
	$(info doing [$@])
	$(Q)sloccount .
.PHONY: clean
clean:
	find . -name ".RData" -or -name ".Rhistory" -exec rm {} \;
