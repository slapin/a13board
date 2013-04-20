import sexpdata
import sys
import math
segs = []
nets = {}

class Net:
    def __init__(self, nid, name):
        self.nid = nid
	self.name = name

class Segment:
    def __init__(self, x1, y1, x2, y2, w, n):
	self.x1 = x1
	self.y1 = y1
	self.x2 = x2
	self.y2 = y2
	self.width = w
	self.net = n

    def len2(self, x1, y1, x2, y2):
	return (x1 - x2) ** 2 + (y1 - y2) ** 2
    def len(self):
	return math.sqrt(self.len2(self.x1, self.y1, self.x2, self.y2))
    def isconnected2(self, x1, y1, x2, y2, l):
        return self.len2(x1, y1, x2, y2) < (l + self.width) ** 2
    def isconnected(self, seg):
	if self.isconnected2(self.x1, self.y1, seg.x1, seg.y1, seg.l):
	    return True
        elif self.isconnected2(self.x1, self.y1, seg.x2, seg.y2, seg.l):
	    return True
        elif self.isconnected2(self.x2, self.y2, seg.x1, seg.y1, seg.l):
	    return True
        elif self.isconnected2(self.x2, self.y2, seg.x2, seg.y2, seg.l):
	    return True
	else:
	    return False
    def __len__(self):
        return int(self.len())


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
    segs.append(Segment(x1, y1, x2, y2, w, n))
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
#    print nets
#    print segs
    for k in nets.keys():
	    nets[k]["length"] = 0
	    for g in segs:
		    if g.net == k:
			    nets[k]["length"] =  nets[k]["length"] + g.len()

    for p in nets.keys():
        print "%d: %s len = %f" %(p, nets[p]["name"], nets[p]["length"])
if __name__ == '__main__':
    main()
