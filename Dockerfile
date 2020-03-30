FROM node:10.15.3-slim

WORKDIR /src/app/

RUN npm install -g pkg

COPY . .

RUN npm install 

ENTRYPOINT [ "pkg", "./package.json" ]