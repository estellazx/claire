FROM java:8

EXPOSE 80

RUN apt-get update -y && \
    apt-get install nodejs -y && \
    apt-get install npm -y && \
    mkdir /usr/src/app && \
    chmod -R 777 /usr/src/app

ADD . /usr/src/app/

WORKDIR /usr/src/app
CMD ["nodejs", "server.js"]
