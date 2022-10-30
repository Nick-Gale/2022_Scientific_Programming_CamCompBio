all: lecture1.pdf lecture2.pdf lecture3.pdf


%.pdf: %.qmd
	quarto render $^

%-4up.pdf: %.pdf
	pdfjam -q --nup 2x2 --suffix '4up' --landscape $<

%-6up.pdf: %.pdf
	pdfjam -q --nup 2x3 --suffix '6up'  $<



.PHONY: clean

clean:
	rm -fr lecture1_files;
	rm -fr lecture1.html
	##rm -fr lecture1.pdf
