FROM node:10-stretch


run npm install -g bower

workdir /usr/webgc

run apt-get update && \
  apt-get install -y --no-install-recommends python

#RUN add-apt-repository -y ppa:chris-lea/node.js
#RUN apt-get update
#RUN apt-get -y install nodejs

#COPY package.json /tmp/package.json
#RUN cd /tmp && npm install
#RUN mkdir -p /usr/webgc && cp -a /tmp/node_modules /usr/webgc/


add dist ./
add src ./
add .gitignore ./
add *.js ./

add bower.json ./
add package.json ./
run bower install --allow-root


# install bower 

#RUN apt-get update && apt-get install -y --no-install-recommends apt-utils

#run apt-get update && \
#apt-get install -y nodejs-legacy
#run curl -L --insecure https://www.npmjs.org/install.sh | bash

#RUN apt-get update  &&  \
#apt-get install -y git-core


#RUN npm install -g bower

# ADD webgc source to our app director

#RUN npm install

CMD ["echo", "well done Y"]



