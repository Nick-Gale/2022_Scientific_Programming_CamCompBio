all: lecture1.pdf

%.pdf: %.qmd
	quarto render $^

%-4up.pdf: %.pdf
	pdfjam -q --nup 2x2 --suffix '4up' --landscape $<



.PHONY: clean

clean:
	rm -fr lecture1_files;
	rm -fr lecture1.html
	##rm -fr lecture1.pdf
