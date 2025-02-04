FROM node:20-alpine

# Create app directory
WORKDIR /app

COPY . .

RUN yarn install


EXPOSE 5000

RUN node dist/index.js

ENTRYPOINT [ "sh", "entrypoint.sh" ]