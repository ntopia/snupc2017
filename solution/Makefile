.PHONY: all clean

all: slide.pdf

SOURCE_TEX=slide.tex

slide.pdf: $(SOURCE_TEX)
	xelatex $(SOURCE_TEX)
	xelatex $(SOURCE_TEX)

clean:
	rm -rf *.log *.aux *.pyg *.toc *.snm *.nav *.out 
