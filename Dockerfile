FROM node
RUN apt update && apt  install vim -y
COPY ./package*.json /
COPY index.js .
RUN npm install express
ENTRYPOINT node index.js
