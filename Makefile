.PHONY: all clean

all: problems.pdf

SOURCE_TEX=problems.tex
SOURCE_CPPS=$(shell find 'problems' -name '*.tex')

problems.pdf: $(SOURCE_TEX) $(SOURCE_CPPS)
	lualatex $(SOURCE_TEX)
	lualatex $(SOURCE_TEX)

clean:
	rm -rf *.log *.aux *.pyg *.toc
