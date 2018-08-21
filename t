#!/usr/bin/lok -f
{for (col=1;col<=NF;col++) {
	thing[NR,col]=$col
	}
}


END {
	for(formerlycolumn=1;formerlycolumn<=31;formerlycolumn++) {
		print thing[1,formerlycolumn], "\t", thing[2,formerlycolumn]
		}
	}
