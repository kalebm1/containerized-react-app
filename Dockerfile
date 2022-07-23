FROM node:alpine

WORKDIR /app

COPY package.json ./

COPY package-lock.json ./

COPY ./ ./

RUN npm i

RUN cd server

RUN npm i

RUN cd ..

CMD ["npm", "run", "start"]

EXPOSE 4001