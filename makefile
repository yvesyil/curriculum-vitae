TEX = pandoc
src = template.tex cv-final.yml
FLAGS = --pdf-engine=xelatex
PYTHON = python3
SECRET = .private.yml

output.pdf: $(src)
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)

cv-final.yml: cv.yml
	$(PYTHON) inject.py

.PHONY: clean
clean:
	rm -f output.pdf
	rm -f cv-final.yml
