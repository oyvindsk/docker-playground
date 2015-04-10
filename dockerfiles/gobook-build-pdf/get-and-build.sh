#!/bin/bash

git clone https://github.com/miekg/gobook.git

cd gobook

echo -en "\nBuilding go book from commit:\n\t\t"
git log --oneline -n 1

echo -en "\nFrom repository:\n\t"
git remote -v | head -n1 | grep -Eo 'http.*git'

echo "(this could take a while..)"
make > latexoutput.log 2>&1


## If the user mounted a volume copy the files there. If not write it to standard out to enable docker run .. > foo.pdf
if [ -d ../volume ]
then
    cp go.pdf latexoutput.log ../volume/
else
    cat go.pdf
fi


