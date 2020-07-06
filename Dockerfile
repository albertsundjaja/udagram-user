FROM node:13-alpine3.10

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .

ENV PORT 8081

EXPOSE 8081

CMD ["npm", "run", "dev"]