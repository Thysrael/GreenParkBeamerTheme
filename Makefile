.PHONY: all clean mk


all:
	xelatex --synctex=1 -shell-escape main.tex
	xelatex --synctex=1 -shell-escape main.tex

mk:
	latexmk -xelatex -quiet --synctex=1 -shell-escape -f main.tex

clean:
	find . -name '*.aux' -print0 | xargs -0 rm -rf
	rm -rf *.lof *.log *.lot *.out *.toc *.bbl *.blg *.thm *.nav *.snm *.vrb *.gz build _minted-main *.fls *.xdv *.pdf *latexmk

save:
	cp main.pdf misc/example.pdf
