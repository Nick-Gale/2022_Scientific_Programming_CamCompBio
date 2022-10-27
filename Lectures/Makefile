all: lecture1.pdf

%.pdf: %.qmd
	quarto render $^




.PHONY: clean

clean:
	rm -fr lecture1_files;
	rm -fr lecture1.html
	##rm -fr lecture1.pdf
