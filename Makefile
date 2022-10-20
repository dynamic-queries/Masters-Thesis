plans: 
	pdflatex --output-directory="build" src/Plans/Plan.tex

papers:
	pdflatex --output-directory="build" src/Papers/Paper.tex

thesis:
	pdflatex --output-directory="build" src/Notes/Thesis.tex

clean: 
	rm -rf build/*