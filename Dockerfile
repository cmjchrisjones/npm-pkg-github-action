FROM node:10.15.3-slim

WORKDIR /src/app/

COPY . .

RUN npm install -g pkg

RUN mkdir executables

# COPY "entrypoint.sh" "/entrypoint.sh"

# ENTRYPOINT [ "/entrypoint.sh" ]