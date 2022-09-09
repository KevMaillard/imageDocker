
FROM ubuntu:focal

RUN mkdir /opt/apps
COPY . /opt/apps

WORKDIR /opt/apps

# Install node
RUN apt-get update
RUN apt-get install nodejs -y

CMD [ "node", "app.js" ]