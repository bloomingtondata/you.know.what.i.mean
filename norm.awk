#!/usr/bin/awk -f
{rms=0
#go across row
for (d=2;d<=NF;d++) {
	#root mean square
	rms=$d^2
	}
#rows have title at the front
print $1, sqrt(rms)
}
