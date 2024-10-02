#
# script to create the ArXiv submission
#

rm -rf ARXIV
rm ARXIV.zip
mkdir ARXIV
cd ARXIV

mkdir figures

cp ../figures/CFvsEmittance.pdf figures
cp ../figures/CFvsGap.pdf figures
cp ../figures/CMD_H.png figures
cp ../figures/CMD_H-propagated.png figures
cp ../figures/CMD_V.png figures
cp ../figures/CMD_V-propagated.png figures
cp ../figures/croppingslit.png figures
cp ../figures/diffractionlimited.png figures
cp ../figures/GSM2D.png figures
cp ../figures/GSM_H.png figures
cp ../figures/GSM_H-propagated.png figures
cp ../figures/GSM_V.png figures
cp ../figures/GSM_V-propagated.png figures
cp ../figures/oasyselements.png figures
cp ../figures/oasyssources.png figures
cp ../figures/SD_H.png figures
cp ../figures/SD_H-propagated.png figures
cp ../figures/SD_V.png figures
cp ../figures/SD_V-propagated.png figures

#cp ../figures/*.png figures
#cp ../figures/*.pdf figures

cp ../template.tex .
cp ../iopconfser.cls .


cp ../iucr.bib .
cp ../iucr.bst .
cp ../iucr.cls .

rm template.pdf 

pdflatex template.tex
bibtex template
sleep 1.0
pdflatex template.tex
pdflatex template.tex

okular template.pdf

sleep 1.0
rm template.aux template.blg template.log template.pdf
cd ..
zip -r ARXIV.zip ARXIV
