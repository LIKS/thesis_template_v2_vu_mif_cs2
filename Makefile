generuoti:
	xelatex thesis.tex
	biber thesis
	xelatex thesis.tex
	open thesis.pdf || xdg-open thesis.pdf

ubuntu:
	echo "Diegiamas LaTeX (PdfLaTeX, XeTeX ir kt.)"
	sudo apt-get install texlive-full
	echo "Diegiama literatūros sąrašo tvarkyklė Biber skirta BibLaTeX paketui"
	sudo apt-get install biber
	echo "Diegiamas Palemonas šriftas į sistemą"
	sudo cp -r Palemonas-2.1 /usr/share/fonts/truetype/

clean:
	rm *.aux *.bbl *.bcf *.blg *.log *.out *.run.xml *.toc
