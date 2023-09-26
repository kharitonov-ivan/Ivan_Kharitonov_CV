# Makefile for building LaTeX documents with XeLaTeX

all: format pdf clean

pdf: Ivan_Kharitonov_resume.tex
	xelatex Ivan_Kharitonov_resume.tex 
	
format:
	latexindent --overwrite Ivan_Kharitonov_resume.tex
clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *bak* *.gz 

.PHONY: all pdf format clean
