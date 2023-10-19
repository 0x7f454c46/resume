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
RESUME		:= resume.pdf
CLEAN		:= $(RESUME:.pdf=.aux) $(RESUME:.pdf=.log)  $(RESUME:.pdf=.out)
DEPS		:= resume.tex resume.sty

all: $(RESUME)

$(RESUME): $(DEPS)
	$(E) " PDFLATEX	" $@
	$(Q) $(TEX) $^
ifeq ($(strip $(KEEP_LOG)),)
	$(Q) $(RM) -f $(CLEAN)
endif

clean:
	$(E) " CLEAN	" $(RESUME) $(CLEAN)
	$(Q) $(RM) -f $(RESUME) $(CLEAN)

.PHONY: all clean

