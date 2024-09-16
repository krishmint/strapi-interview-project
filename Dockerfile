FROM node:20.17
WORKDIR /app
COPY . /app
RUN npm install -g npm@10.8.3
RUN rm -rf node_modules
RUN rm -f  package-lock.json
RUN npm install
COPY . /app
EXPOSE 1337
ENTRYPOINT  ["npm", "run", "develop" ]
