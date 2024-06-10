FROM node:22-alpine3.19

#Copy app files from src directory
COPY package*.json /app/
COPY src /app/

#set the work directory where the next commands will be executed
WORKDIR /app/

#install dependencies 
RUN npm install
CMD ["node","server.js"]