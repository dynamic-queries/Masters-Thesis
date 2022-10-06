plans: 
	pdflatex --output-directory="build" src/Plans/Plans.tex

papers:
	pdflatex --output-directory="build" src/Papers/Geometric_Symmetry_Detection.tex

clean: 
	rm -rf build/*