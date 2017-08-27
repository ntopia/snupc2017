.PHONY: all clean

all: problems-div2.pdf problems-div1.pdf

SOURCE_TEX_DIV2=problems-div2.tex
SOURCE_TEX_DIV1=problems-div1.tex
SOURCE_CPPS=$(shell find 'problems' -name '*.tex') intro.tex

problems-div2.pdf: $(SOURCE_TEX_DIV2) $(SOURCE_CPPS)
	lualatex $(SOURCE_TEX_DIV2)
	lualatex $(SOURCE_TEX_DIV2)

problems-div1.pdf: $(SOURCE_TEX_DIV1) $(SOURCE_CPPS)
	lualatex $(SOURCE_TEX_DIV1)
	lualatex $(SOURCE_TEX_DIV1)

clean:
	rm -rf *.log *.aux *.pyg *.toc
