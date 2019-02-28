all: presentation.pdf

%.pdf: %.tex
	latexrun --latex-cmd=xelatex -o $@ $<

.PHONY: all clean

clean:
	$(RM) -v -rf latex.out
	$(RM) -v presentation.pdf
