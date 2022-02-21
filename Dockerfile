####  Build stage ##############
FROM node:latest AS build

RUN mkdir /app
WORKDIR /app

COPY package.json .
RUN npm install 

COPY . .
RUN ls

RUN npm run build

FROM donatowolfisberg/spa-server as spa-build

COPY --from=build /app/www public
RUN ./build.sh

FROM scratch

COPY --from=spa-build /app/server /server
CMD ["/server"]
