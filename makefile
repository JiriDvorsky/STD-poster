ifeq ($(OS),Windows_NT) 
	DelCmd := del /s /q
else
	DelCmd := rm -f
endif

.PHONY: clean cleanwork


Poster.pdf: Poster.tex Lecture1.tex Lecture2.tex Lecture3.tex Lecture4.tex Lecture5.tex Lecture6.tex Lecture7.tex
	xelatex  $<
	xelatex -interaction=batchmode $<

clean: cleanwork
	$(DelCmd) Poster.pdf

cleanwork:
	$(DelCmd) *.aux
	$(DelCmd) *.log
