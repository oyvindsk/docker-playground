
# Build the "Learning Go" PDF from source

## What
Dockerfile to clone the latest version of the go book and build the pdf.
This happens when you "docker run" this image.
The "Learning Go book" can be found here: http://github.com/miekg/gobook 

## Why
The official PDFs seems outdated and building the pdf requires _a lot_ of dependencies I don't want installed locally on my machine.
This can also serve as an example for similar build images in the future.

## Run
    mkdir output
    sudo docker run -t -i --rm -v $(pwd)/output:/root/volume oyvindsk/gobook-build-pdf


## Bugs
Some fonts are missing because the ubuntu packages where renamed or removed. This can cause some text to be rendered wrong. But I haven't noticed any problems yet.
