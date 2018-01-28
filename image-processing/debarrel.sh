#!/bin/bash
numfiles=$(ls -l *.JPG | wc -l | xargs)
echo "Processing $numfiles pictures..." 
mkdir -p out
i=0
for file in *.JPG; do
	let "i++"
	echo "($i/$numfiles) - $file"
	convert $file -distort barrel '0.1 -0.32 0' out/PROCESSED-$file
done
echo "Wrote $numfiles files to 'out/'."
