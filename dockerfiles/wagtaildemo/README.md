

Dockerfile for https://github.com/torchbox/wagtaildemo

Runs Django and Postgresql in one container. This might not be what you want in production, but it's a nice starting point. For production, running psql in a different container - or at least storing the data outside the container - seems like a good idea. But, hey, there's many ways to do it =) 

Bugs:
 - Search does not work (?)
