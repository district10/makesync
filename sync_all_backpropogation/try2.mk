SUMMARY:=dir.summary.txt

DIRS:=$(shell ls -d */)
DIRS:=$(DIRS:%/=%)
DIRSUMS:=$(addsuffix .dir.summary.txt, $(DIRS))
DIRSUMS:=$(addprefix _, $(DIRSUMS))

FILES:=$(wildcard *.txt *.md)
FILES:=$(filter-out $(SUMMARY), $(FILES))

all: $(DIRSUMS) $(SUMMARY)
%.dir.summary.txt:
	echo $(DIRSUMS)

$(SUMMARY): $(FILES)
	cat $^ > $@
