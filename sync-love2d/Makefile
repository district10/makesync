PUBDIR:=publish
MAINLUA:=main.lua
LOVEGAME:=game.love

EVERTHING:=$(wildcard *.* */*.* */*/*.* */*/*/*.* */*/*/*/*.*)
EVERTHING:=$(filter-out $(PUBDIR) $(PUBDIR)/% $(MAINLUA) $(LOVEGAME), $(EVERTHING))
EVERTHINGOUT:=$(addprefix $(PUBDIR)/, $(EVERTHING))

all: $(PUBDIR)/$(MAINLUA) $(EVERTHINGOUT) $(LOVEGAME)
clean:
	rm -rf $(LOVEGAME)
	rm -rf ./$(PUBDIR)/*

$(PUBDIR)/%: %
	mkdir -p $(@D); cp $< $@

$(LOVEGAME): $(EVERTHINGOUT)
	cd $(PUBDIR) && zip -9 -q -r ../$(LOVEGAME) .
