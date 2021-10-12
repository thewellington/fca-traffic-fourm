all:


slides:
	reveal-md slides.md

static:
	reveal-md slides.md --static --static-dirs=assets

pdf:
	decktape reveal -s 2910x1940 http://localhost:1948/slides.md#/ ~/Desktop/slides.pdf
	decktape reveal -s 2910x1940 http://localhost:1948/slides.md?showNotes=true/#/ ~/Desktop/slides-notes.pdf

pp:
	pandoc -s slides.md -o ~/Desktop/slides.pptx
