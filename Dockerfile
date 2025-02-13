FROM node:20.18-alpine AS package

WORKDIR /app

ADD package.json package-lock.json ./
RUN npm i
ADD . .

FROM package AS linting

RUN npm run lint

FROM package AS build
RUN npm run build

FROM nginx:1.27.4 AS nginx

COPY --from=build /app/dist /usr/share/nginx/html
COPY ./config/nginx/default.conf /etc/nginx/conf.d/default.conf

