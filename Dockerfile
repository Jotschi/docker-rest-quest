FROM node:0.12.1-wheezy

RUN apt-get update
RUN apt-get -y install git-core
RUN git clone https://github.com/cprerovsky/rest-quest
EXPOSE 80

RUN cd rest-quest ; npm install
CMD ["node", "rest-quest/index.js"]
