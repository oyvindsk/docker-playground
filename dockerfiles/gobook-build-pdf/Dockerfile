
FROM ubuntu:14.04.2
MAINTAINER Øyvind Skaar



RUN apt-get update 
RUN apt-get install -y inkscape
RUN apt-get install -y gnumeric
## ttf-droid
RUN apt-get install -y fonts-droid
RUN apt-get install -y ttf-dejavu
##ttf-sazanami-gothic
RUN apt-get install -y fonts-vlgothic
## not in 14.4.02:   ttf-arphic-ukai  , replaced by:
RUN apt-get install -y fonts-arphic-ukai
RUN apt-get install -y texlive-fonts-recommended
RUN apt-get install -y texlive-extra-utils
RUN apt-get install -y texlive-xetex
RUN apt-get install -y texlive-latex-extra
RUN apt-get install -y texlive-latex-recommended
# RUN apt-get install -y latex-cjk-xcjk
RUN apt-get install -y git-core
RUN apt-get install -y make

WORKDIR /root

ADD get-and-build.sh ./
RUN chmod +x /root/get-and-build.sh
CMD /root/get-and-build.sh


