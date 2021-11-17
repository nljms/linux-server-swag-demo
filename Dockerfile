FROM node:16-alpine

# Create app directory, this is in our container/in our image
WORKDIR /usr/local

COPY package*.json ./
# Install app dependencies
RUN yarn && yarn cache clean

ENV PATH=/usr/local/node_modules/.bin:$PATH

WORKDIR /usr/local/app




# Bundle app source
COPY ./dist dist/

EXPOSE 3000
CMD [ "node", "dist/index" ]
