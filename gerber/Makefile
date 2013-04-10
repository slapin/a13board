GERBER_FILES = a13board-B_Cu.gbl \
		a13board.drl \
		a13board-Edge_Cuts.gbr \
		a13board-F_Cu.gtl \
		a13board-F_Mask.gts \
		a13board-F_Paste.gtp \
		a13board-F_SilkS.gto \
		a13board-Inner1_Cu.gbr \
		a13board-Inner2_Cu.gbr

all: ../png/pcb.png ../gerber.zip

../png/pcb.png: a13board.gvp
	gerbv -p a13board.gvp -D1200x1200 -x png -o ../png/pcb.png

../gerber.zip: $(GERBER_FILES)
	@rm ../gerber.zip
	zip -r ../gerber.zip $(GERBER_FILES)

