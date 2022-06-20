FROM node:18-alpine3.15

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY tutorial/package*.json .
RUN npm install

# RUN npm install -g npm@8.12.1
# RUN npm install -g create-react-app
# RUN chmod a+x /app/node_modules/.bin/react-scripts
# RUN npm install react-scripts@3.4.1 -g --silent

COPY ./tutorial/* ./