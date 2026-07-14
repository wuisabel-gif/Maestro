LILYPOND ?= lilypond
EXAMPLES := $(wildcard examples/*.ly)
OUTPUT := output

.PHONY: all check clean

all:
	@mkdir -p $(OUTPUT)
	@for score in $(EXAMPLES); do \
		$(LILYPOND) -o $(OUTPUT)/$$(basename $$score .ly) $$score || exit 1; \
	done

check:
	@mkdir -p /tmp/maestro-check
	@for score in $(EXAMPLES); do \
		$(LILYPOND) -dno-print-pages -o /tmp/maestro-check/$$(basename $$score .ly) $$score || exit 1; \
	done

clean:
	@find $(OUTPUT) -type f \( -name '*.pdf' -o -name '*.midi' \) -delete 2>/dev/null || true
