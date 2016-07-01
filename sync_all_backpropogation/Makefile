PUBDIR:=publish
STATICSDIR:=statics

EVERTHING:=$(wildcard *.* */*.* */*/*.* */*/*/*.* */*/*/*/*.*)
EVERTHING:=$(filter-out $(PUBDIR) $(PUBDIR)/%, $(EVERTHING))
EVERTHINGOUT:=$(addprefix $(PUBDIR)/, $(EVERTHING))

all: $(EVERTHINGOUT)

clean:
	rm -rf publish/*

$(PUBDIR)/%: %
	@mkdir -p $(@D)
	cp $< $@
