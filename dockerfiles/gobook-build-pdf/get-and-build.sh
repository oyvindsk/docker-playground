#!/bin/bash

git clone https://github.com/miekg/gobook.git 1>&2

cd gobook

echo -en "\nBuilding go book from commit:\n\t\t"  1>&2
git log --oneline -n 1  1>&2

echo -en "\nFrom repository:\n\t" 1>&2
git remote -v | head -n1 | grep -Eo 'http.*git' 1>&2


echo "(this could take a while..)" 1>&2
make > latexoutput.log 2>latexoutput.err


## If the user mounted a volume copy the files there. If not write it to standard out to enable docker run .. > foo.pdf
if [ -d ../volume ]
then
    cp go.pdf latexoutput.log ../volume/
else
    cat go.pdf
fi

echo -e "\nDONE!" 1>&2


