FROM node

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install
RUN npm ci

COPY . .

EXPOSE 2022
CMD ["node", "index.js"]
