.PHONY: all clean

all:
	xelatex --synctex=1 main.tex
	xelatex --synctex=1 main.tex

clean:
	find . -name '*.aux' -print0 | xargs -0 rm -rf
	rm -rf *.lof *.log *.lot *.out *.toc *.bbl *.blg *.thm *.nav *.snm *.vrb *.gz
