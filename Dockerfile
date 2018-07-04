FROM fedora

WORKDIR /usr/webgc

# install bower 

RUN dnf install -y git

RUN dnf install -y nodejs

RUN npm install -g bower

# ADD webgc source to our app directory

ADD . /usr/webgc

RUN ls
RUN npm install

CMD ["echo", "well done Y"]






