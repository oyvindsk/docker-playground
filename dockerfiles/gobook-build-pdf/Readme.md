
## Run
mkdir output
sudo docker run -t -i --rm -v $(pwd)/output:/root/volume oyvindsk/gobook-build-pdf


## Bugs
Some fonts might be missing, causing some text to be rendered wrong.
