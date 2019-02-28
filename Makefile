all: presentation.pdf

%.pdf: %.tex
	latexrun --latex-cmd=xelatex -o presentation.pdf presentation.tex

.PHONY: all clean

clean:
	$(RM) -v -rf latex.out
	$(RM) -v presentation.pdf
