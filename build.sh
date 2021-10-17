#!/bin/bash

mkdir build
cd build
cp ../latex/* . -r
cd slides


for file in *.tex
do
	eval "lualatex -output-directory=.. $file" & 
done

wait
cd ../
mkdir ../pdf
cp *.pdf ../pdf/
cd ..
rm build -r
