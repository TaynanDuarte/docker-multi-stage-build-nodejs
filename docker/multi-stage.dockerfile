FROM node:16-alpine3.15 AS build

LABEL stage=build

WORKDIR /app

COPY . .

RUN npm install && npm run build


FROM node:16-alpine3.15

WORKDIR /app

COPY --from=build /app/dist/ /app/dist/
COPY --from=build /app/package.json /app/package-lock.json /app/

RUN npm install --production

CMD [ "npm", "run", "start:prod" ]