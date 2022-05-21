TEX = pandoc
src = template.tex cv-final.yml
FLAGS = --pdf-engine=xelatex
ENV_FILE = .private

output.pdf: $(src)
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)

#	sed -E 's/\$\{(.*)\}/\$\1/' $< > $@
cv-final.yml: cv.yml
	@. ./$(ENV_FILE)
	@cat $< | envsubst > $@

.PHONY: clean
clean:
	rm -f output.pdf
	rm -f cv-final.yml
