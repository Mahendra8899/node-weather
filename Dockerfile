#Deploying node js application weather
FROM node:16.13-alpine3.14
RUN mkdir nodeapp/
WORKDIR nodeapp/
COPY package.json /nodeapp
RUN npm install
COPY . /nodeapp
CMD ["npm" , "start"]
