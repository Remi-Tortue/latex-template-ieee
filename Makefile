LATEXMK = latexmk

build:
	$(LATEXMK) 

clean: clean-tikz
	$(LATEXMK) -silent -c

tikz:
	$(LATEXMK) figures/tikz_*.tex
	@cp build/tikz_*.pdf src/images

clean-tikz:
	$(LATEXMK) -silent -c figures/tikz_*.tex

.PHONY: build clean tikz clean-tikz

