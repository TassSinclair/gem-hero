BASE_NAME := ${basename ${FILE_NAME}}

gems:
	for FILE_NAME in *-gem*.scad; do \
		$(MAKE) FILE_NAME=$$FILE_NAME one ; \
	done

trays:
	for FILE_NAME in *-tray*.scad; do \
		$(MAKE) FILE_NAME=$$FILE_NAME one ; \
	done

one:
	openscad -o $(BASE_NAME).stl ${FILE_NAME}
	openscad --colorscheme Solarized --projection ortho --imgsize 1000,1000 --camera=0,0,550,0,0,0 --render -o ${BASE_NAME}.png ${FILE_NAME}
	convert ${BASE_NAME}.png -alpha on -transparent "#fdf6e3" -trim ${BASE_NAME}.png