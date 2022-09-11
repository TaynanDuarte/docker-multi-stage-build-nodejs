FROM node:16-alpine3.15

WORKDIR /app

COPY . .

RUN npm install && npm run build
CMD [ "npm", "run", "start:prod" ]