# Silent make rules.
ifeq ($(strip $(V)),)
        E := @echo
        Q := @
else
        E := @\#
        Q :=
endif

RM		:= rm
TEX		:= pdflatex
PANDOC		:= pandoc -s -f latex -t markdown

RESUME		:= resume.pdf
MARKDOWN	:= README.md
CLEAN		:= $(RESUME:.pdf=.aux) $(RESUME:.pdf=.log)  $(RESUME:.pdf=.out)
DEPS		:= resume.tex resume.sty Makefile

all: $(RESUME) $(MARKDOWN)

$(RESUME): $(DEPS)
	$(E) " PDFLATEX	" $@
	$(Q) $(TEX) $^ > /dev/null
ifeq ($(strip $(KEEP_LOG)),)
	$(Q) $(RM) -f $(CLEAN)
endif

$(MARKDOWN): $(DEPS)
	$(E) " PANDOC		" $@
	$(Q) $(PANDOC) $^ -o $@

clean:
	$(E) " CLEAN	" $(RESUME) $(MARKDOWN) $(CLEAN)
	$(Q) $(RM) -f $(RESUME) $(MARKDOWN) $(CLEAN)

.PHONY: all clean

