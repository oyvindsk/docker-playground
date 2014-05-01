
# Slightly modified version of dockerfile/nginx to make /etc/nginx availible as a volume

# Run as:  docker run -d -p 80:80  oyvindsk/simple_http_proxy
#
# or with volumes to make it easier to edit the config:
# Copy the /etc/nginx folder out of the container
#
#      docker run -d -p 80:80 -v ~/docker/volume-nginx-proxy/nginx:/etc/nginx -v ~/docker/volume-nginx-proxy/log:/var/log/nginx oyvindsk/simple_http_proxy

FROM dockerfile/nginx
MAINTAINER Øyvind Skaar


ADD nginx/proxy.conf /etc/nginx/
ADD nginx/proxy_domains.conf /etc/nginx/

# Define mountable directories.
VOLUME ["/data", "/etc/nginx", "/var/log/nginx"]

ENTRYPOINT ["nginx"]
CMD ["-c", "/etc/nginx/proxy.conf"]
