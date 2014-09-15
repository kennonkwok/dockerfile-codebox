FROM      ubuntu:14.04
MAINTAINER Kennon Kwok "kennon.kwok@gmail.com"

# install curl
RUN apt-get update && apt-get install -y npm git && apt-get clean && rm -fr /var/cache/apt

# install codebox
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN npm install -g codebox && npm cache clean

EXPOSE 8000
ENTRYPOINT ["codebox"]
