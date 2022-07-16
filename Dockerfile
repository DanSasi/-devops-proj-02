# Specify Base Image

FROM node:16

# WORKDIR /usr/app
WORKDIR /usr/src/app

# install some dependecies
RUN npm install express
COPY server.js .
EXPOSE 80

#defualt command
CMD [ "node", "server.js" ]