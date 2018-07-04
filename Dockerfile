FROM node:10-stretch


run npm install -g bower

workdir /usr/webgc

run apt-get update && \
  apt-get install -y --no-install-recommends python



add dist ./
add src ./
add .gitignore ./
add *.js ./

add bower.json ./
add package.json ./
run bower install --allow-root


CMD ["echo", "well done Y"]



