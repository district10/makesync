DIRSUM:=.dir.summary.txt
DIRSUMS:=$(wildcard */$(DIRSUM))
ifeq(,$(DIRSUMS))
	$(shell touch $(DIRSUM))
endif

all: $(DIRSUM)
*/.dir.summary:
	cp Makefile $(@D)
	make -C $(@D)

$(DIRSUM): $(DIRSUMS)
	cat $^ > $@
