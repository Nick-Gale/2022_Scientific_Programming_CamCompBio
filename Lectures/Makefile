all: lecture1.html

%.html: %.qmd
	quarto render $^




.PHONY: clean

clean:
	rm -fr lecture1_files;
	rm -fr lecture1.html

