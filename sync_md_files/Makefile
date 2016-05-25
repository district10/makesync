PUBDIR:=publish
STATICSDIR:=statics

SRCMD:=$(wildcard *.md */*.md */*/*.md */*/*/*.md */*/*/*/*.md)
SRCMD:=$(filter-out $(PUBDIR)/%, $(SRCMD))
DSTMD:=$(addprefix $(PUBDIR)/, $(SRCMD))
HTMLS:=$(DSTMD:%.md=%.html)
HTMLS:=$(filter-out $(PUBDIR)/index.html, $(HTMLS))
STATICS:=$(wildcard $(STATICSDIR)/*.js $(STATICSDIR)/*.css)
PUBSTATICS:=$(addprefix $(PUBDIR)/, $(STATICS))

all: $(DSTMD) $(HTMLS) $(PUBSTATICS) $(PUBDIR)/index.html

clean:
	rm -rf publish/*

$(PUBDIR)/%.md: %.md
	@mkdir -p $(@D); cp $< $@
$(PUBDIR)/%.html: $(PUBDIR)/%.md
	pandoc $< -o $@
$(PUBDIR)/$(STATICSDIR)/%.js: $(STATICSDIR)/%.js
	@mkdir -p $(@D)
	cp $< $@
$(PUBDIR)/$(STATICSDIR)/%.css: $(STATICSDIR)/%.css
	@mkdir -p $(@D)
	cp $< $@
$(PUBDIR)/index.html: $(HTMLS)
	(echo '---';find publish -name '*.html';echo '...') | sed -e "s/$(PUBDIR)\//  - /" > $(PUBDIR)/sitemap.html && \
	cp $(PUBDIR)/sitemap.html $@
