import sexpdata
import sys
segs = []
nets = {}

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

def add_segment(obj):
    x1 = y1 = x2 = y2 = w = 0
    n = -1
    for k in obj:
        if type(k) == list:
	    if pun(k[0]) == "start":
	        x1, y1 = map(pun, k[1:])
	    elif pun(k[0]) == "end":
	        x2, y2 = map(pun, k[1:])
	    elif pun(k[0]) == "width":
	        w = pun(k[1])
	    elif pun(k[0]) == "net":
	        n = pun(k[1])
	    elif pun(k[0]) == "tstamp":
	        pass
	    elif pun(k[0]) == "layer":
	        pass
#	    else:
#		print k
    segs.append([x1, y1, x2, y2, w, n])
#    print "(seg %f %f %f %f width = %f, net %d)" %(x1, y1, x2, y2, w, n)
    
def main():
    fname = sys.argv[1]
    r = sexpdata.parse(open(fname).read())
    if str(r[0][0].value()) == "kicad_pcb":
        for i in r[0]:
	    if type(i) == list:
	        if i[0].value() == "net":
		    nets[i[1]] = {'name': pun(i[2])}
	        if i[0].value() == "segment":
		    add_segment(i)
	        if i[0].value() == "via":
		    pass
#		    print map(pun, i)
    print nets
    print segs

if __name__ == '__main__':
    main()
