
# Build the "Learning Go" PDF from source

## What
Dockerfile to clone the latest version of the go book and build the pdf.
This happens when you "docker run" this image.
The "Learning Go book" can be found here: http://github.com/miekg/gobook 

The pre-build image is on the Docker Hub: https://registry.hub.docker.com/u/oyvindsk/gobook-build-pdf/

## Why
The official PDFs seems outdated (?) and building the pdf requires _a lot_ of dependencies I don't want installed locally on my machine.
This can also serve as an example for similar build images in the future.

## Run
    mkdir output
    sudo docker run --rm -v $(pwd)/output:/root/volume oyvindsk/gobook-build-pdf
    
    # OR:
    sudo docker run --rm oyvindsk/gobook-build-pdf > learn-go.pdf


## Bugs
Some fonts are missing because the ubuntu packages where renamed or removed. This can cause some text to be rendered wrong, but I haven't noticed any problems yet.

