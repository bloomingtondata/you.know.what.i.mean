{ print $1; }

{ for (d=2; d<=NF; d++) { $norm += $d*$d; $norm=sqrt($norm); } }

{ print $1 $norm; }
