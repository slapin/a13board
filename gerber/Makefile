GERBER_FILES = a13board-B_Cu.gbl \
		a13board.drl \
		a13board-NPTH.drl \
		a13board-Edge_Cuts.gbr \
		a13board-F_Cu.gtl \
		a13board-F_Mask.gts \
		a13board-F_Paste.gtp \
		a13board-F_SilkS.gto \
		a13board-Inner1_Cu.gbr \
		a13board-Inner2_Cu.gbr \
		a13board-B_Mask.gbs \
		a13board-B_Paste.gbp \
		a13board-B_SilkS.gbo

all: ../png/pcb.png ../gerber_$(shell git describe  --tags --abbrev=0 HEAD).zip

../png/pcb.png: a13board.gvp ${GERBER_FILES}
	gerbv -p a13board.gvp -D2400x2400 -x png -o ../png/pcb.png

../gerber_$(shell git describe  --tags --abbrev=0 HEAD).zip: $(GERBER_FILES)
	@-rm ../gerber_$(shell git describe  --tags --abbrev=0 HEAD).zip
	zip -r ../gerber_$(shell git describe  --tags --abbrev=0 HEAD).zip $(GERBER_FILES)

