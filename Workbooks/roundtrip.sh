## check to see that we can roundtrip between qmd and ipynb
##julia_advanced.ipynb

quarto convert julia_advanced.ipynb -o a.qmd
quarto convert a.qmd
quarto convert a.qmd
quarto convert a.ipynb -o b.qmd
diff a.qmd b.qmd ## empty, good.
quarto convert b.qmd
diff a.ipynb b.ipynb

## good -- seems to roundtrip, once you remove the output from first ipynb



quarto convert julia_advanced.ipynb 
