#
# script to create the ArXiv submission
#

rm -rf ARXIV
rm ARXIV.zip
mkdir ARXIV
cd ARXIV

mkdir figures
cp ../figures/*.png figures
cp ../figures/*.pdf figures
cp ../main.tex .


cp ../iucr.bib .
cp ../iucr.bst .
cp ../iucr.cls .

rm main.pdf 

pdflatex main.tex
bibtex main
sleep 1.0
pdflatex main.tex
pdflatex main.tex

okular main.pdf

sleep 1.0
rm main.aux main.blg main.log main.pdf
cd ..
zip -r ARXIV.zip ARXIV
