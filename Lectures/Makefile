all: lecture1.html lecture2.html

## use the export function to save pdf from chrome.  Found some issues with CLI 
##allpdf: lecture1.pdf lecture2.pdf
##%.pdf: %.html
##	Rscript -e "pagedown::chrome_print('$^')"

%.html: %.qmd
	quarto render $^




.PHONY: clean

clean:
	rm -fr lecture1_files;
	rm -fr lecture1.html
	##rm -fr lecture1.pdf
