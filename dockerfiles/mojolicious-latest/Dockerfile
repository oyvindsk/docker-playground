
# Base image for Mojolicious apps
# It uses the latest oficcial Docker Perl image and the latest version of Mojolicious on cpan.
# By latest, I mean the latest when this image was build and uploaded to the docker hub. If you build it yourself, you get a the latest availible when you build it (duh).
# Not sure if this is a good way of doing things, especially since there's little testing going on. Another way of doing it would be to pin the version on Perl, Mojolicious and other modules  to make building the image yourself more repeatable. OTOH hand, Docker kind of gives you this with images and tags.

## Todo: Include *a few* more comon perl modules

## Running: 
# - Copy the Mojolicious app into the image / container
# - Mount a volume with the app. 

FROM perl:5.20
MAINTAINER Øyvind Skaar

RUN apt-get update
RUN apt-get -y install cpanminus

# Soon deprecated, added to the official perl image
RUN cpanm Mojolicious

# Define mountable directories.
VOLUME ["/app"]

#ENTRYPOINT ["nginx"]
#CMD ["-c", "/etc/nginx/proxy.conf"]
