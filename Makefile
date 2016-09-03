NAME=MSR-design
AUX=$(NAME).aux
INTERMEDIATES=$(NAME).bbl $(NAME).blg $(NAME).log $(NAME).out

$(NAME).pdf : $(NAME).tex $(NAME).bib
	pdflatex -shell-escape $(NAME)
	bibtex $(NAME)
	pdflatex -shell-escape $(NAME)
	pdflatex -shell-escape $(NAME)

clean :
	rm $(AUX) $(INTERMEDIATES)

clobber :
	rm $(NAME).pdf
