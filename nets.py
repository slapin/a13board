import sexpdata
import sys
def pdump(r):
    if type(r) == list and type(r[0]) != list:
	    print r[0]
    elif type(r) == list and type(r[0]) == list:
    	    map(pdump, r)
    else:
        print r

def pun(obj):
    if isinstance(obj, sexpdata.SExpBase):
        return obj.value()
    else:
	return obj
def main():
    fname = sys.argv[1]
    r = sexpdata.parse(open(fname).read())
    if str(r[0][0].value()) == "kicad_pcb":
        for i in r[0]:
	    if type(i) == list:
	        if i[0].value() == "net":
		    print " %d: %s" %(i[1], pun(i[2]))
	        if i[0].value() == "segment":
		    print map(pun, i)
	        if i[0].value() == "via":
		    print map(pun, i)

if __name__ == '__main__':
    main()
