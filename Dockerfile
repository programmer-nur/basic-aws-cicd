FROM node:20-alpine

# Create app directory
WORKDIR /app

COPY . .

RUN yarn install

COPY .env.example .env

EXPOSE 5000

RUN ["+x", "/entrypoint.sh"]

ENTRYPOINT [ "sh", "/entrypoint.sh" ]