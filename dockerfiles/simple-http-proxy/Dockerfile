
# Based on https://github.com/metalivedev/isawesome.git

FROM ubuntu
MAINTAINER Øyvind Skaar

# RUN apt-get update && apt-get install -y build-essential libssl-dev zlib1g-dev wget libpcre3 libpcre3-dev
RUN apt-get update && apt-get install -y build-essential zlib1g-dev wget libpcre3 libpcre3-dev

ENV NGINXVERSION nginx-1.4.1
RUN mkdir src && cd src && wget http://nginx.org/download/$NGINXVERSION.tar.gz && tar xvf $NGINXVERSION.tar.gz

# Configure the sub filter module
# RUN cd src/$NGINXVERSION && ./configure --with-http_sub_module
RUN cd src/$NGINXVERSION && ./configure
RUN cd src/$NGINXVERSION && make install

# This is the port nginx listens to by default
EXPOSE 80
EXPOSE 81

# With ENTRYPOINT and CMD we can shorten this:
# docker run -p 80 -name isawesomecontainer -d isawesomeimage /usr/local/nginx/sbin/nginx -c /usr/local/nginx/conf/container.conf
# to this:
# docker run -p 80 -name isawesomecontainer -d isawesomeimage
# (Assuming you named this image "isawesomeimage")

#ENTRYPOINT ["/usr/local/nginx/sbin/nginx"]
#CMD ["-c", "/usr/local/nginx/conf/container.conf"]

CMD ["/usr/local/nginx/sbin/nginx", "-c", "/usr/local/nginx/conf/proxy.conf"]

ADD proxy.conf /usr/local/nginx/conf/
ADD proxy_domains.conf /usr/local/nginx/conf/
