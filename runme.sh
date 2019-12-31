export BIBINPUTS=":.:/home/vruiz/bibs/:"
make clean
make index.pdf
rm -f citations
grep citation ~/Burrows-Wheeler_transform/index.aux >> citations
#echo "\bibdata{text-compression,data-compression}" >> index.aux
#echo "\bibstyle{plain}" >> index.aux
#pdflatex citations
cat citations >> index.aux
bibtex index
#touch texput.tex
make index.html

