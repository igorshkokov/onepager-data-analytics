# Makefile for compiling LaTeX with cleanup

TEXFILE=main.tex
PDFNAME=main.pdf

all: clean pdf

pdf:
	latexmk -pdf -shell-escape $(TEXFILE)

clean:
	latexmk -C
	rm -rf _minted-*
	rm -f $(PDFNAME)
