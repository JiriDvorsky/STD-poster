.PHONY: clean cleanwork

Poster.pdf: Poster.tex Lecture1.tex Lecture2.tex Lecture3.tex Lecture4.tex Lecture5.tex Lecture6.tex Lecture7.tex
	xelatex  $<
	xelatex -interaction=batchmode $<

clean: cleanwork
	del Poster.pdf

cleanwork:
	del *.aux
	del *.log
