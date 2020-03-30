FROM node:10.15.3-slim

RUN npm install -g pkg

ENTRYPOINT [ "/entrypoint.sh" ]