run:
	podman run -i --rm \
	--name latex \
	-v ${PWD}:/usr/src/app \
	-w /usr/src/app \
	registry.gitlab.com/islandoftex/images/texlive:latest \
	make buildpdf

buildpdf:
	latexmk template.tex -pdf -shell-escape
