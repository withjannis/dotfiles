run:
	sudo docker run -i --rm \
	--name latex \
	-v ${PWD}:/usr/src/app \
	-w /usr/src/app \
	registry.gitlab.com/islandoftex/images/texlive:latest \
	make buildpdf

buildpdf:
	makeglossaries template 
	latexmk template.tex -pdf -shell-escape
