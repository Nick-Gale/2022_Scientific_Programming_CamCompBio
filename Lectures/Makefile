all: lecture1.html

allpdf: lecture1.pdf

%.html: %.qmd
	quarto render $^

%.pdf: %.html
	Rscript -e "pagedown::chrome_print('$^')"



.PHONY: clean

clean:
	rm -fr lecture1_files;
	rm -fr lecture1.html
	rm -fr lecture1.pdf
