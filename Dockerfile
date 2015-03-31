FROM node:0.12.1-wheezy

RUN apt-get update
RUN apt-get -y install git-core
RUN cd /opt/ ; git clone https://github.com/cprerovsky/rest-quest
EXPOSE 80

RUN cd /opt/rest-quest ; npm install

CMD ["sh", "-c", "cd /opt/rest-quest ; node server.js"]
