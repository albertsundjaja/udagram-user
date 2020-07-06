FROM node:14.5.0-alpine3.12

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .

ENV PORT 8081

EXPOSE 8081

CMD ["npm", "run", "dev"]