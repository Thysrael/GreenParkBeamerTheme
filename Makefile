.PHONY: all clean

all:
	xelatex --synctex=1 pre.tex
	xelatex --synctex=1 pre.tex

clean:
	find . -name '*.aux' -print0 | xargs -0 rm -rf
	rm -rf *.lof *.log *.lot *.out *.toc *.bbl *.blg *.thm *.nav *.snm *.vrb
