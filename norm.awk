{rms=0
for (d=2;d<=NF;d++) {
	rms=d^2
	}
print $1, sqrt(rms)
}
