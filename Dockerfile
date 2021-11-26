FROM node:10-alpine

# Install app dependencies
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

ENV PORT=3000
ENV TYPE='built with Dockerfile'

EXPOSE 3000

CMD [ "npm", "start" ]