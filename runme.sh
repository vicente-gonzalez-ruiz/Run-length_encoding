export BIBINPUTS=":.:/home/vruiz/bibs/:"
make clean
make index.pdf
grep citation ~/Burrows-Wheeler_transform/index.aux >> index.aux
#echo "\bibdata{text-compression,data-compression}" >> index.aux
#echo "\bibstyle{plain}" >> index.aux
#pdflatex citations
bibtex index
#touch texput.tex
make index.html

