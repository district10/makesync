DIRS:=$(shell ls -d */)
DIRSUMS:=$(addsuffix .dirsum, $(DIRS:%/=%))

all: DIRSUM
	echo dirs are $(DIRS)
	echo dirs are $(DIRSUMS)
