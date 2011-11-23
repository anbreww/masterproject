# Test makefile for building latex guide
BASE_NAME = thesis-andrew
TEXSOURCE = $(BASE_NAME).tex
OUTPUT = $(BASE_NAME).pdf
BIBSOURCE = Bibliography

pdf:
	pdflatex $(TEXSOURCE) && pdflatex $(TEXSOURCE) && evince $(OUTPUT)

bib:
	pdflatex $(TEXSOURCE) && pdflatex $(TEXSOURCE) && bibtex $(BIBSOURCE) && pdflatex $(TEXSOURCE) && evince $(OUTPUT)

clean:
	rm -rf *.bbl *.aux *.blg *.log *.toc *.lof *.lol *.lot *.out
