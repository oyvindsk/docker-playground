
# Docker official ubuntu base image
FROM ubuntu

# add universe repository - I'm sure ther's a better way to do this, but it works for now.. Go perl =)
# unofficial community packages, see 
#	https://help.ubuntu.com/community/Repositories/Ubuntu
#	https://help.ubuntu.com/community/Repositories/CommandLine

RUN grep main /etc/apt/sources.list | perl -pE s/main/universe/ >> /etc/apt/sources.list

# apt update
RUN apt-get update

# Install redis
RUN apt-get install -y redis-server
